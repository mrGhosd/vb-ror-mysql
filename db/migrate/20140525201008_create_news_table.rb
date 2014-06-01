class CreateNewsTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stock_title
      t.text   :stock_text
      t.has_attached_file :image
      t.timestamps
    end
  end
end
