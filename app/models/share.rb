class Share < ActiveRecord::Base
  scope :available, ->{ where(enabled: true) }
end