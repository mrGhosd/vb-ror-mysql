class RolesPercent < ActiveRecord::Base
  belongs_to :role, dependent: :destroy
  belongs_to :percent, dependent: :destroy
end