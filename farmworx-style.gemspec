lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'farmworx/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'farmworx-style'
  spec.version       = Farmworx::Style::VERSION
  spec.authors       = ['Team Farmworx']
  spec.email         = ['team@farmworx.io']
  spec.summary       = 'Farmworx style guides and shared style configs.'
  spec.homepage      = 'https://github.com/farmworx/farmworx-style'
  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency 'rubocop', '~> 0.74.0'
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
end
