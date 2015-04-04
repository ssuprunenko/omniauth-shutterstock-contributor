# coding: utf-8
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'omniauth-shutterstock-contributor/version'
require File.expand_path('../lib/omniauth-shutterstock-contributor/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-shutterstock-contributor'
  spec.version       = OmniAuth::Shutterstock::Contributor::VERSION
  spec.author        = 'Sergey Suprunenko'
  spec.authors       = ['Sergey Suprunenko']
  spec.email         = ['suprunenko.s@gmail.com']

  spec.summary       = %q{Shutterstock-Contributor OAuth2 strategy for OmniAuth.}
  spec.description   = %q{Shutterstock-Contributor OAuth2 strategy for OmniAuth.}
  spec.homepage      = 'https://github.com/ssuprunenko/omniauth-shutterstock-contributor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'omniauth', '~> 1.0'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rspec', '~> 3.2'
end
