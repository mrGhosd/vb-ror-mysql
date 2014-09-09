class AddImageToUser < ActiveRecord::Migration
  def change
    change_table :index do |t|
      t.has_attached_file :avatar
    end
  end
end
