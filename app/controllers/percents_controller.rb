class PercentsController < ApplicationController

  def index
    @percent = Percent.all
  end

  def new
    @percent = Percent.new
  end

  def create
    @percent = Percent.new(percent_params)
    @percent.save
    redirect_to percents_path
  end

  def update
    @percent = Percent.find(params[:id])
    if @percent.update_attributes(news_params)
      redirect_to faqs_path
    else
      render :edit
    end
  end

  def edit
    @percent = Percent.find(params[:id])
  end

  def destroy
    @percent = Percent.find(params[:id])
    @percent.destroy
    head :ok
  end

  private
  def percent_params
    params.require(:percent).permit(:value, :begin_date, :end_date, :max_summ,
                                    :min_summ, :max_time, :min_time, :loan_or_deposit)
  end
end