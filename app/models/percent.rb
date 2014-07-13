class Percent < ActiveRecord::Base
  has_many :loan
  has_many :deposit
end