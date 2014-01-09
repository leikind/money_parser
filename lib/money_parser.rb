# encoding: UTF-8

module MoneyParser

  class Engine < ::Rails::Engine
  end


  def self.parse(money_string)

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

    # puts "#{cleaned_up} => #{normalized}"

    normalized.to_f
  end

end
