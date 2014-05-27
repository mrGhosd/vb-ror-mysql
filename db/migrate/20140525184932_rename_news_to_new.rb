class RenameNewsToNew < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text   :text
      t.has_attached_file :image
      t.timestamps
    end
  end
end
