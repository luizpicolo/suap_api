# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "suap_api/version"

Gem::Specification.new do |spec|
  spec.name          = "suap_api"
  spec.version       = SuapApi::VERSION
  spec.authors       = ["Luiz Picolo"]
  spec.email         = ["luizpicolo@gmail.com"]

  spec.summary       = "Um wrapper Ruby para acesso a API do SUAP"
  spec.description   = "Um wrapper Ruby para acesso a API do SUAP (Sistema Unificado de Administração Publica) do IFMS"
  spec.homepage      = "https://github.com/ifms-na/suap_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "vcr", "~> 5.0"
  spec.add_development_dependency "webmock", "~> 3.18"
  spec.add_dependency 'json_spec', '~> 1.1', '>= 1.1.5'
  spec.add_dependency 'mechanize', '~> 2.8', '>= 2.8.5'
end
