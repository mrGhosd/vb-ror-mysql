class AddColumnsToRoleTable < ActiveRecord::Migration
  def change
    add_column :roles, :active, :boolean, default: false
    add_column :roles, :default_chosen, :boolean, default: false
  end
end
