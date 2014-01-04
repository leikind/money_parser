require 'rubygems'
require 'bundler/setup'

require 'money_parser'

RSpec.configure do |config|
  # some (optional) config here
end

def random_amount_of_spaces
  ' ' * rand(2)
end

def randomly_replace_zeros_by_o(string)
  indexes = string.
    each_char.
    each_with_index.
    to_a.
    select{|l, idx| l == '0'}.
    map{|_, idx| idx }

  return nil if indexes.empty?
  idx = indexes[rand(indexes.size)]
  string.clone[idx] = 'O'
end

def generate_tests specs
  code = ''
  specs.inject([]) {|accu, pair|

    money_string, result = pair

    accu << [money_string,       result]
    accu << [random_amount_of_spaces + "-" + random_amount_of_spaces + money_string, result * -1]

    tuple_with_o = [randomly_replace_zeros_by_o(money_string), result]

    accu << tuple_with_o unless tuple_with_o[0].nil?

    accu
  }.each {|money_string, result|

      code << %!

        describe "\"#{money_string}\" should be parsed as #{result}" do
          MoneyParser.parse("\"#{money_string}\").should == #{result}
        end
      !
  }
  code
end