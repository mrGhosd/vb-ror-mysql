class ChangeDepositTable < ActiveRecord::Migration
  def change
    change_table :deposits do |t|
      t.rename :deposit_current_summ, :current_amount
    end
  end
end
