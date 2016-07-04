require_relative 'lib/fastlane-yaml-init/version'

Gem::Specification.new do |gem|
  gem.name          = 'fastlane-yaml-init'
  gem.version       = FastlaneYaml::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jani Jegoroff']
  gem.email         = ['jani.jegoroff@gmail.com']
  gem.summary       = 'Fast init and YAML configuration skeleton for fastlane'
  gem.description   = 'Inits fastlane folder structure and enables metadata configuration in YAML format'
  gem.homepage      = 'http://github.com/JaniJegoroff/fastlane-yaml-init'
  gem.license       = 'MIT'

  gem.files         = Dir.glob('lib/**/*') + %w(bin/fastlane-yaml-init)
  gem.require_paths = %w(lib)
  gem.executables   = %w(fastlane-yaml-init)

  gem.test_files    = Dir.glob('spec/**/*.rb')

  gem.add_runtime_dependency 'colorize', '~> 0.7'

  gem.add_development_dependency 'rake', '~> 11.2'
  gem.add_development_dependency 'minitest', '~> 5.9'
  gem.add_development_dependency 'minitest-reporters', '~> 1.1'
  gem.add_development_dependency 'rubocop', '~> 0.41'
  gem.add_development_dependency 'coveralls', '~> 0.8'
end
