class RobokassPaymentsController < ApplicationController
  def pay
    @loan = Loan.find(params[:id])
    @pay_params = {}
    @pay_params[:MrchLogin] = "vb-ror"
    @pay_params[:OutSum]
    @pay_params[:InvId]
    @pay_params[:Desc]
    @pay_params[:SignatureValue]
    @pay_params[:IncCurrLabel]
    @pay_params[:Culture] = "ru"
  end

  def result

  end

  def success

  end

  def fail

  end
end