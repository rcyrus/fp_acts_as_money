$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fp_acts_as_money/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fp_acts_as_money"
  s.version     = FpActsAsMoney::VERSION
  s.authors     = ["Rajeev"]
  s.email       = ["email@email.com"]
  s.homepage    = "http://google.com"
  s.summary     = "Summary of FpActsAsMoney."
  s.description = "Description of FpActsAsMoney."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.0.9"

end
