class Deposit < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  validates_presence_of :deposit_current_summ, :percent_id
end