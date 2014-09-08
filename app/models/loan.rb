class Loan < ActiveRecord::Base
  belongs_to :user
  has_many :percent
  has_many :loan_repayments
  validates_presence_of :loan_sum, :begin_date, :end_date


  scope :unpayed_loans, -> { where(status: false).last}
  scope :payed_loans, -> { where(status: true) }


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
    current_date = begin_date + month_diff.month
    if Date.today > current_date.to_date
      current_date + 1.month
    end
  end

  def actual_close_data
    LoanRepayment.where(loan_id: id).last.created_at.to_date
  end

  def current_day_in_loan_history
    (Date.today.to_date - begin_date.to_date).to_i
  end

  def payed_sum
    return "Не рассмотрен" if response.blank?
    payment = LoanRepayment.sum(:granted_summ, conditions: {loan_id: id})
    if payment < loan_sum.to_i
      "#{payment}/#{loan_sum} р."
    else
      "#{loan_sum}/#{loan_sum} р."
    end
  end

end