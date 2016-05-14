# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prefecture_jp/version'

Gem::Specification.new do |spec|
  spec.name          = "prefecture_jp"
  spec.version       = PrefectureJp::VERSION
  spec.authors       = ["Ko Kumagai"]
  spec.email         = ["ko.kumagai.ko@gmail.com"]

  spec.summary       = %q{A source for data about Jpanese prefectures.}
  spec.description   = %q{A source for data about Jpanese prefectures.}
  spec.homepage      = "https://github.com/KoKumagai/prefecture_jp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "json", "~> 1.8.3"
end
