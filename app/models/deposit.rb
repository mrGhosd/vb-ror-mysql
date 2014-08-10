 class Deposit < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  has_many :contribution_account
  validates_presence_of :deposit_current_summ, :percent_id
end