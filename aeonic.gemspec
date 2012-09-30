Gem::Specification.new do |s|
  s.name        = 'aeonic'
  s.version     = '0.0.3'
  s.date        = '2010-09-30'
  s.summary     = "Aeonic"
  s.description = "Manipulator of Time"
  s.authors     = ["Matt Heath"]
  s.email       = 'matt@heath.ly'
  s.files       = ["lib/aeonic.rb"]
  s.homepage    = 'http://github.com/mattheath/aeonic'
  s.executables << 'aeonic'

  s.add_runtime_dependency "chronic", '>= 0.8.0'
end