class AddPhoneToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :contact_phone, :string
  end
end
