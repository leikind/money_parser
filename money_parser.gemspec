Gem::Specification.new do |s|
  s.name          = 'money_parser'
  s.version       = '0.0.2'
  s.homepage      = 'https://github.com/leikind/money_parser'
  s.date          = '2014-03-2'
  s.summary       = 'Tries to parse various crazy money formats'
  s.description   = 'Tries to parse various crazy money formats'
  s.authors       = ['Yuri Leikind']
  s.email         = 'yuri.leikind@gmail.com'
  s.files         = `git ls-files`.split($/)
  s.license       = 'MIT'

  s.add_development_dependency "rspec"
end
