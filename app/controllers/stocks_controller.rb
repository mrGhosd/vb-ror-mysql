class StocksController < ApplicationController

  def index
    @stock = Stock.all
  end

  def create
    @stock = Stock.new(news_params)
    @stock.save
    redirect_to new_stocks_path
  end

  def new
    # @stock = Stock.new
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    if @stock.update_attributes(news_params)
      flash.now[:notice] = "Новость успешно обновлена"
      redirect_to stocks_path
    else
      render :edit
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  private

  def news_params
    params.require(:stock).permit(:stock_title, :stock_text, :image)
  end
end