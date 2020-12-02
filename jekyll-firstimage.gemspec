# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "jekyll/firstimage/version"

Gem::Specification.new do |spec|
  spec.version = Jekyll::FirstImage::VERSION
  spec.homepage = "https://nhoizey.github.io/jekyll-firstimage/"
  spec.authors = ["Nicolas Hoizey"]
  spec.email = ["nicolas@hoizey.com"]
  spec.files = %w(Rakefile Gemfile README.md CHANGELOG.md LICENSE) + Dir["lib/**/*"]
  spec.summary = "A Jekyll plugin that adds a Liquid filter finding the first image in a HTML content string, including responsive images srcset"
  spec.name = "jekyll-firstimage"
  spec.license = "MIT"
  spec.require_paths = ["lib"]
  spec.description = <<-DESC
    A Jekyll plugin that adds a Liquid filter finding the first image in a HTML content string, including responsive images srcset
  DESC

  spec.add_runtime_dependency "jekyll", ">= 3.6", "< 5"
  spec.add_runtime_dependency "nokogiri", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rubocop", "~> 1.5.0"
end
