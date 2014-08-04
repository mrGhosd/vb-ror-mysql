class ChangeLoanStatusColumn < ActiveRecord::Migration
  def change
    change_column :loans, :status, :boolean, default: false
  end
end
