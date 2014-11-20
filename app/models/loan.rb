class Loan < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  has_many :loan_repayments
  after_create :set_response
  validates_presence_of :sum, :begin_date, :end_date

  scope :unpayed_loans, -> { where(status: false)}
  scope :payed_loans, -> { where(status: true) }


  def date_in_months
    (end_date.year * 12 + end_date.month) - (begin_date.year * 12 + begin_date.month)
  end

  def date_in_days
    (end_date.to_date - begin_date.to_date).to_i
  end

  def everymonth_pay
    if percent_id
      (sum.to_i / date_in_months) * Percent.find(percent_id).try(:value)
    end
  end

  def repayments
    arr = []
    self.loan_repayments.each do |loan|
      arr << loan.to_json
    end
    arr
  end

  def closest_payment_date
    month_diff = (Date.today.month - begin_date.month).to_i
    current_date = begin_date + month_diff.month
    if (Date.today > current_date.to_date) ||
        (Date.today == current_date.to_date)
      current_date + 1.month
    else
      current_date
    end
  end

  def actual_close_data
    if self.status
      LoanRepayment.where(loan_id: id).last.try(:created_at).try(:to_date)
    else
      self.end_date.to_date
    end
  end

  def current_day_in_loan_history
    (Date.today.to_date - begin_date.to_date).to_i
  end

  def set_response
    self.update(response: false)
  end

  def payed_sum
    return "Не рассмотрен" if response.blank? || !response
    payment = LoanRepayment.sum(:granted_summ, conditions: {loan_id: id})
    if payment < sum.to_i
      "#{payment}/#{sum} р."
    else
      "#{sum}/#{sum} р."
    end
  end

end