class Loan < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  validates_presence_of :loan_sum, :begin_date, :end_date

  scope :unpayed_loans, -> { where(status: false).last}

  def date_in_months
    (end_date.year * 12 + end_date.month) - (begin_date.year * 12 + begin_date.month)
  end

  def date_in_days
    (end_date.to_date - begin_date.to_date).to_i
  end

  def everymonth_pay
    (loan_sum.to_i / date_in_months) * Percent.find(percent_id).value
  end

  def closest_payment_date
    month_diff = (Date.today.month - begin_date.month).to_i
    begin_date + month_diff.month
  end

  def current_day_in_loan_history
    (Date.today.to_date - begin_date.to_date).to_i
  end
end