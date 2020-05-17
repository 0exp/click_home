# frozen_string_literal: true

require_relative 'lib/click_home/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.name    = 'click_home'
  spec.version = ClickHome::VERSION
  spec.authors = ['Rustam Ibragimov']
  spec.email   = ['iamdaiver@gmail.com']

  spec.summary     = 'ClickHome - ClickHouse Ruby Driver'
  spec.description = 'ClickHome - ClickHouse Ruby Driver'
  spec.homepage    = 'https://github.com/0exp/click_home'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'armitage-rubocop', '~> 0.83.0'
  spec.add_development_dependency 'simplecov', '~> 0.18.5'
end
