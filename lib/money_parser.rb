# encoding: UTF-8
# © Yuri Leikind 2014

require 'bigdecimal'

module MoneyParser

  if Kernel.const_defined?('Rails')
    class Engine < ::Rails::Engine
    end
  end

  def self.parse(money_string)

    return nil if money_string.nil?

    cleaned_up = money_string.
      gsub(/\s+/,'').
      gsub(/(\d)o/i){$1 + '0'}.
      gsub(/o(\d)/i){'0' + $1}.
      gsub(/\s+/,'').
      tr(',', '.').
      gsub(/[^\d\.-]/, '')

    return nil if cleaned_up.empty?

    chunks = cleaned_up.split('.')

    normalized = if chunks.size == 1
      cleaned_up
    else
      if chunks[-1].size > 2
        chunks.join
      else
        chunks[0..-2].join + '.' + chunks[-1]
      end
    end

    normalized ? BigDecimal.new(normalized) : normalized
  end

end
