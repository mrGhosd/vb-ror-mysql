class Loan < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  validates_presence_of :loan_sum, :begin_date, :end_date
end