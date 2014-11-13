class RemoveStringFromDepositAndLoan < ActiveRecord::Migration
  def change
    change_table :loans do |t|
      t.change :loan_sum, :decimal, precision: 8, scale: 2
    end

    change_table :deposits do |t|
      t.change :deposit_current_summ, :decimal
    end
  end
end
