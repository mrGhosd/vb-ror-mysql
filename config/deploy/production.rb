server '95.85.22.240', user: 'web', roles: %w(web app db)
set :rails_env, :production
set :branch, 'TESTS'
set :deploy_to, '/web/vb_ror'
set :unicorn_config_path, '/web/vb_ror/current/config/unicorn.rb'
