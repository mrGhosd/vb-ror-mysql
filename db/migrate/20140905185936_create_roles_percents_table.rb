class CreateRolesPercentsTable < ActiveRecord::Migration
  def change
    create_table :roles_percents do |t|
      t.belongs_to :role
      t.belongs_to :percent
      t.timestamp
    end
  end
end
