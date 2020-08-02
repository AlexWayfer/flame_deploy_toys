# frozen_string_literal: true

require 'toys-core'

module FlameDeployToys
	## Define toys for benchmark
	class Template
		include Toys::Template

		attr_reader :config_dir

		def initialize(config_dir:)
			@config_dir = config_dir
		end

		on_expand do |template|
			tool :deploy do
				desc 'Deploy to servers'

				long_desc <<~DESC
					Command for deploy code from git to servers

					Example:
						Update from git master branch
							toys deploy
						Update from git development branch
							toys deploy development
				DESC

				optional_arg :branch, default: :master

				include :exec, exit_on_nonzero_status: true, log_level: Logger::UNKNOWN

				to_run do
					require 'yaml'

					config_file = Dir[File.join(template.config_dir, 'deploy.y{a,}ml')].first

					servers = YAML.load_file config_file

					servers.each do |server|
						update_command = "cd #{server[:path]} && exe/update.sh #{branch}"
						sh "ssh -t #{server[:ssh]} 'bash --login -c \"#{update_command}\"'"
					end
				end
			end
		end
	end
end
