require_relative "lib/engine_with_webpacker/version"

Gem::Specification.new do |spec|
  spec.name        = "engine_with_webpacker"
  spec.version     = EngineWithWebpacker::VERSION
  spec.authors     = ["Diego Orejuela"]
  spec.email       = ["dfrodriguezor@gmail.com"]
  spec.homepage    = "https://symplifica.com"
  spec.summary     = "Symplifica Rails engine"
  spec.description = "Symplifica Rails engine"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://symplifica.com"
  spec.metadata["changelog_uri"] = "https://symplifica.com"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'gemoji-parser'


  spec.add_dependency 'searchkick'


  spec.add_dependency 'pagy'

  spec.add_dependency 'pg'

  spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.1"
end
