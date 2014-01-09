# © Yuri Leikind 2014

require "bundler/gem_tasks"
require 'rdoc/task'

task :default => :rdoc

desc 'Generate documentation for the plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'money_parser'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
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
  idx  = indexes[rand(indexes.size)]
  idx2 = indexes[rand(indexes.size)]

  string.clone.tap do |cloned|
    cloned[idx] = 'O'
    cloned[idx] = 'o'
  end
end

def generate_tests specs
  ruby_code = "require 'spec_helper'\ndescribe MoneyParser do\n"

  js_code = "var assert = require(\"assert\")\n" +
      "var parseMoney = require('../vendor/assets/javascripts/parseMoney');\n\n" +
      "describe('moneyParse', function(){\n"

  specs.inject([]) {|accu, pair|

    money_string, result = pair

    accu << [money_string,       result]

    unless result.nil?
      accu << [random_amount_of_spaces + "-" + random_amount_of_spaces + money_string, result * -1]
    end

    tuple_with_o = [randomly_replace_zeros_by_o(money_string), result]

    accu << tuple_with_o unless tuple_with_o[0].nil?

    accu
  }.each {|money_string, result|

      ruby_code << %!
  it '\"#{money_string}\" should be parsed as #{result.inspect}' do
    MoneyParser.parse(\"#{money_string}\").should == #{result.inspect}
  end\n!

      js_code << %!
  it('\"#{money_string}\" should be parsed as #{nil_to_null(result.inspect)}', function(){
    assert.equal(#{nil_to_null(result.inspect)}, parseMoney(\"#{money_string}\"));
  });\n!


  }
  [ruby_code + "end\n", js_code + "})\n"]
end

def nil_to_null(null_or_other)
  null_or_other == 'nil' ? 'null' : null_or_other
end

desc 'Generate tests'
task :generate_tests do |rdoc|
  require './specification.rb'
  ruby_code, js_code = generate_tests(SPECIFICATION)
  File.open('./spec/money_parser_spec.rb', 'w'){|f| f.write ruby_code }
  File.open('./test/money_parser_spec.js', 'w'){|f| f.write js_code }
end

