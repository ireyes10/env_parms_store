require_relative 'lib/env_params/version'

Gem::Specification.new do |spec|
  spec.name        = 'env_params'
  spec.version     = EnvParams::VERSION
  spec.authors     = ['ireyes 10']
  # spec.email       = ["ireyes@infile.com.gt"]
  # spec.homepage    = "TODO"
  spec.summary     = 'EnvParams: Summary of EnvParams.'
  spec.description = 'EnvParams: es una gema para la configuracion de parametros de variables de entorno'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  #spec.add_dependency 'httparty'
  spec.add_dependency 'rails', '>= 4.1.0'
end
