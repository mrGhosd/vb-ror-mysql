class AddStockEnabledColumn < ActiveRecord::Migration
  def change
    add_column :stocks, :enabled, :boolean, default: false
  end
end
