require 'rails_helper'

describe Deposit do
  let!(:user) { create :user }
  let!(:percent) { create :percent, :deposit }
  let!(:confirmed_deposit) { create :deposit, :confirmed, user_id: user.id, percent_id: percent.id }
  let!(:contribution_account) { create :contribution_account, :removed, deposit_id: confirmed_deposit.id }
  let!(:unconfirmed_deposit) { create :deposit, :unconfirmed, user_id: user.id, percent_id: percent.id}

  it "show contribution accounts to deposits" do
    expect(confirmed_deposit.contribution_account).to eq([contribution_account])
  end

  it "return day differenece between now and created at attribute" do
    expect(confirmed_deposit.days_diff).to eq((Time.zone.now.to_date - confirmed_deposit.created_at.to_date ).to_i)
  end
end