class AddTimestampsToDepositsTable < ActiveRecord::Migration
  def change
    change_table :deposits do |t|
      t.timestamps
    end
  end
end
