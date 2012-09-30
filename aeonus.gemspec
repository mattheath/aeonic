Gem::Specification.new do |s|
  s.name        = 'aeonus'
  s.version     = '0.0.2'
  s.date        = '2010-09-30'
  s.summary     = "Aeonus!"
  s.description = "Manipulator of Time"
  s.authors     = ["Matt Heath"]
  s.email       = 'matt@heath.ly'
  s.files       = ["lib/aeonus.rb"]
  s.homepage    = 'http://github.com/mattheath/aeonus'
  s.executables << 'aeonus'

  s.add_runtime_dependency "chronic", '>= 0.8.0'
end