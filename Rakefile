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
  idx = indexes[rand(indexes.size)]
  string.clone[idx] = 'O'
end

def generate_tests specs
  code = "require 'spec_helper'\ndescribe MoneyParser do\n"

  specs.inject([]) {|accu, pair|

    money_string, result = pair

    accu << [money_string,       result]
    accu << [random_amount_of_spaces + "-" + random_amount_of_spaces + money_string, result * -1]

    tuple_with_o = [randomly_replace_zeros_by_o(money_string), result]

    accu << tuple_with_o unless tuple_with_o[0].nil?

    accu
  }.each {|money_string, result|

      code << %!
  it '\"#{money_string}\" should be parsed as #{result}' do
    MoneyParser.parse(\"#{money_string}\").should == #{result}
  end\n!
  }
  code + "end\n"
end

desc 'Generate tests'
task :generate_tests do |rdoc|
  require './spec/specification.rb'
  File.open('./spec/money_parser_spec.rb', 'w'){|f| f.write generate_tests(SPECIFICATION)}
end
