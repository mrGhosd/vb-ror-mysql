class AddUsersTableSession < ActiveRecord::Migration
  def change
    add_column :users, :session, :integer
  end
end
