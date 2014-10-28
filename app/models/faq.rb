class Faq < ActiveRecord::Base
  scope :last_ten, -> { limit(10) }
end