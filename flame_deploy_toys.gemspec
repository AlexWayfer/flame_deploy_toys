# frozen_string_literal: true

require_relative 'lib/flame_deploy_toys/version'

Gem::Specification.new do |spec|
	spec.name          = 'flame_deploy_toys'
	spec.version       = FlameDeployToys::VERSION
	spec.authors       = ['Alexander Popov']
	spec.email         = ['alex.wayfer@gmail.com']

	spec.summary       = 'Toys template for deploying Flame application.'
	spec.description   = <<~DESC
		Toys template for deploying Flame application.
	DESC
	spec.license = 'MIT'

	github_uri = "https://github.com/Wayfer/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.7', '< 4'

	spec.add_runtime_dependency 'toys-core', '~> 0.15.2'
end
