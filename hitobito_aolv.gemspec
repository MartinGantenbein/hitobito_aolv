$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your wagon's version:
require 'hitobito_aolv/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'hitobito_aolv'
  s.version     = HitobitoAolv::VERSION
  s.authors     = ['Martin Gantenbein']
  s.email       = ['gante@olg-rymenzburg.ch']
  s.homepage    = 'http://www.aolv.ch'
  s.summary     = 'AOLV specific organization structure'
  s.description = 'AOLV specific organization structure'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile']
  s.test_files = Dir['test/**/*']

end
