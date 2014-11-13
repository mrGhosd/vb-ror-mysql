class ChangeLoanAndDepositTable < ActiveRecord::Migration
  def change
    change_table :deposits do |t|
      t.change :deposit_current_summ, :decimal, precision: 10, scale: 2
    end
  end
end
