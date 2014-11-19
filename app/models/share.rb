class Share < ActiveRecord::Base
  scope :available, ->{ where(enabled: true).order(created_at: :desc) }
end