class AddCarrierWaveImages < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :stocks, :image, :string
    add_column :partners, :image, :string
  end
end
