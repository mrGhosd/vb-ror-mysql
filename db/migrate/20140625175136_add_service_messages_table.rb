class AddServiceMessagesTable < ActiveRecord::Migration
  def change
    create_table :contact_messages, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_phone
      t.text   :user_message
      t.timestamps
    end
  end
end
