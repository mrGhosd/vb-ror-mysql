class AddLoanRepaymentTimestamp < ActiveRecord::Migration
  def change
    change_table :loan_repayments do |t|
      t.timestamps
    end
  end
end
