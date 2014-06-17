class AddSharesTable < ActiveRecord::Migration
  def change
    create_table :shares, :options => 'COLLATE=utf8_general_ci' do |t|
      t.string :share_title
      t.text :share_text
      t.boolean :enabled, default:true
      t.timestamps
    end
  end
end
