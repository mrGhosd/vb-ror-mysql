class LoanRepayment < ActiveRecord::Base
  belongs_to :loan
  after_save :check_loan_status

  def check_loan_status
    binding.pry
    loan = Loan.find(loan_id)
    payment = LoanRepayment.sum(:granted_summ, conditions: {loan_id: loan.id})
    if payment >= loan.loan_sum.to_i
      loan.status = true
      loan.save
    end
  end

  def pay_to_full_sum
    loan = Loan.find(loan_id)

  end
end