class Role < ActiveRecord::Base
  has_many :roles_percents
  has_many :percents, through: :roles_percents
end