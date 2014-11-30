class UpdateAllDeposits < ActiveRecord::Migration
  def change
    change_table :deposits do |t|
      t.change :response, :boolean, default: false
    end
    Deposit.update_all(response: false)
  end
end
