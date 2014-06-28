class DepositsController < ApplicationController

  def new
    @user = User.new
    @deposit = Deposit.new
  end

  def create

  end

end