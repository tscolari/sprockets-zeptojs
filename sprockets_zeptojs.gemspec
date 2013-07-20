$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sprockets_zeptojs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sprockets_zeptojs"
  s.version     = SprocketsZeptojs::VERSION
  s.authors     = ["Tiago Scolari"]
  s.email       = ["tscolari@gmail.com"]
  s.homepage    = "https://github.com/tscolari/sprockets_zeptojs"
  s.summary     = "Zepto.js scripts for sprockets"
  s.description = "Zepto.js for rails"

  s.files = Dir["{config,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "sprockets"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mocha"
  s.add_development_dependency "rails"
end
