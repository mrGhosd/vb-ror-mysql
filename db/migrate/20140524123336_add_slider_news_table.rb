class AddSliderNewsTable < ActiveRecord::Migration
  def change
    change_table :news do |t|
      t.has_attached_file :news_image
    end
  end
end
