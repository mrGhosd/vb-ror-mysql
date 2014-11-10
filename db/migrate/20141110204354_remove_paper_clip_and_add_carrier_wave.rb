class RemovePaperClipAndAddCarrierWave < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :avatar_file_name
      t.remove :avatar_content_type
      t.remove :avatar_file_size
      t.remove :avatar_updated_at
    end

    change_table :partners do |t|
      t.remove :image_file_name
      t.remove :image_content_type
      t.remove :image_file_size
      t.remove :image_updated_at
    end

    change_table :stocks do |t|
      t.remove :image_file_name
      t.remove :image_content_type
      t.remove :image_file_size
      t.remove :image_updated_at
    end
  end
end
