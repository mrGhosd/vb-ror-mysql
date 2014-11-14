class RemoveStringFromDepositAndLoan < ActiveRecord::Migration
  def change
    change_table :loans do |t|
      t.change :loan_sum, :decimal, precision: 8, scale: 2
      t.rename :loan_sum, :sum
    end

    change_table :deposits do |t|
      t.change :deposit_current_summ, :decimal
    end
  end
end
