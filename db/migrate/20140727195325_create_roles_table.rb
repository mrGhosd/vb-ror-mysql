class CreateRolesTable < ActiveRecord::Migration
  def change
    create_table :roles, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :value
      t.timestamps
    end
  end
end
