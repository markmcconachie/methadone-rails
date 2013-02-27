$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "methadone/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "methadone-rails"
  s.version     = Methadone::Rails::VERSION
  s.authors     = ["Mark McConachie"]
  s.email       = ["mark@markmcconachie.com"]
  s.homepage    = "https://github.com/markmcconachie/methadone-rails"
  s.summary     = "Generate bin commands for your rails app using Methadone."
  s.description = "Generate bin commands for your rails app using Methadone "

  s.files         = `git ls-files`.split($/)
  s.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "methadone"

  s.add_development_dependency 'ammeter'
  s.add_development_dependency 'rspec-rails'
end
