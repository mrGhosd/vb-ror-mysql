class AddConfirmationColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :confirmed, :boolean, default: false
    User.update_all(confirmed: true)
  end
end
