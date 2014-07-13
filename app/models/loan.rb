class Loan < ActiveRecord::Base
  has_many :users
  has_many :percent
end