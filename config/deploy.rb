lock '3.2.1'

set :application, 'vb_ror'
set :repo_url, 'git@github.com:mrGhosd/vb-ror-mysql.git'
set :deploy_via, :remote_cache
set :copy_exclude, %w(.git)

set :rbenv_ruby, '2.1.4'
set :rbenv_type, :user
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :linked_files, %w{config/database.yml config/unicorn.rb}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'unicorn:reload'
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :rake, 'tmp:clear'
      end
    end
  end
end
