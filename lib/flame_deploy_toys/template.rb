# frozen_string_literal: true

require 'toys-core'

module FlameDeployToys
	## Define toys for benchmark
	class Template
		include Toys::Template

		on_expand do
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

				def run
					require 'yaml'

					servers = YAML.load_file "#{context_directory}/config/deploy.yml"

					servers.each do |server|
						update_command = "cd #{server[:path]} && exe/update.sh #{branch}"
						sh "ssh -t #{server[:ssh]} 'bash --login -c \"#{update_command}\"'"
					end
				end
			end
		end
	end
end
