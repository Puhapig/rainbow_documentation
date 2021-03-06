$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'rainbow_documentation/version'

Gem::Specification.new do |s|
  s.name        = 'rainbow_documentation'
  s.version     = RainbowDocumentation::VERSION || raise('Commit has not been tagged for release')
  s.date        = RainbowDocumentation::RELEASE_DATE

  s.summary     = 'A wrapper for RSpec that keeps things colourful'
  s.description = %(
    Colorizes the example output strings without changing the color of pending and error output
    See https://github.com/andrea-capri/rainbow_wrapper for more details.
  )

  s.licenses    = ['MIT']
  s.authors     = ['Andrea Capri']
  s.email       = ['andrea.a.capri@gmail.com']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.0'

  s.require_path  = 'lib'
  s.files         = %w(LICENSE README.md) + Dir.glob('{lib}/**/*')
end
