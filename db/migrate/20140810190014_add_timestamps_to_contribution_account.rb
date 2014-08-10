class AddTimestampsToContributionAccount < ActiveRecord::Migration
  def change
    change_table :contribution_accounts do |t|
      t.timestamps
    end
  end
end
