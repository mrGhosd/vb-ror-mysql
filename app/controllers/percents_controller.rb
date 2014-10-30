class PercentsController < ApplicationController
  before_action :check_admin

  def index
    @percent = Percent.all
  end

  def new
    @percent = Percent.new
  end

  def create
    Percent.create(percent_params)
    redirect_to percents_path
  end

  def update
    Percent.find(params[:id]).update(percent_params)
    redirect_to percents_path
  end

  def edit
    @percent = Percent.find(params[:id])
  end

  def destroy
    Percent.find(params[:id]).destroy
    head :ok
  end

  private
  def percent_params
    params.require(:percent).permit(:value, :begin_date, :end_date, :max_summ,
                                    :min_summ, :max_time, :min_time, :loan_or_deposit)
  end
end