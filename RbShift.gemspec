# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rb_shift'

Gem::Specification.new do |spec|
  spec.name    = 'RbShift'
  spec.version = RbShift::VERSION
  spec.authors = ['Jakub Cechacek']
  spec.email   = ['jcechace@gmail.com']

  spec.summary     = 'Ruby OpenShift client'
  spec.description = 'Ruby client wrapper for oc tools'
  spec.homepage    = 'https://github.com/jcechace/RbShift'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'minitest', '~> 5.10'
  spec.add_development_dependency 'minitest-hooks', '~> 1.4'
  spec.add_development_dependency 'minitest-matchers_vaccine', '~> 1.0'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'rest-client', '~> 2.0'
end
