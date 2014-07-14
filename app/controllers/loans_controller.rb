class LoansController < ApplicationController
  def new
    ::Callback.new
    @loan = Loan.new
  end
end