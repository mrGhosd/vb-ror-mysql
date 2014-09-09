class AddPhoneToUserTable < ActiveRecord::Migration
  def change
    add_column :index, :contact_phone, :string
  end
end
