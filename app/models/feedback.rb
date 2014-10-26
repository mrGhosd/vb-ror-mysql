class Feedback < ActiveRecord::Base
  scope :last_four, -> { limit(4).order(created_at: :desc) }
  scope :paginated, ->(page) { all.paginate(page: page, per_page: 10) }
end