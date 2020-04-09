$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "qa/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "qa"
  spec.version     = Qa::VERSION
  spec.authors     = ["zhongsheng
"]
  spec.email       = ["nily.zhong@gmail.com"]
  spec.homepage    = "http://blog.dzunion.cn"
  spec.summary     = "Summary of Qa."
  spec.description = "Description of Qa."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = 'http://mygemserver.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.1"
  spec.add_dependency 'webpacker', '~> 4.0'

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "devise"
end
