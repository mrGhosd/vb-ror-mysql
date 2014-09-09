class Percent < ActiveRecord::Base
  has_many :loan
  has_many :deposit
  has_many :roles_percents
  has_many :roles, through: :roles_percents
end