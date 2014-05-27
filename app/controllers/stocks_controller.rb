class StocksController < ApplicationController

  def create
    @stock = Stock.new(news_params)
    @stock.save
    redirect_to root_path
  end

  def new
    @stock = Stock.new
  end

  private

  def news_params
    params.require(:stock).permit(:title, :text, :image)
  end
end