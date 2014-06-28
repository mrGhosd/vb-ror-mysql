class AddCallbackTable < ActiveRecord::Migration
  def change
    create_table :callbacks, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :call_surname
      t.string :call_name
      t.string :call_second_name
      t.string :call_email
      t.string :call_phone
      t.timestamps
    end
  end
end
