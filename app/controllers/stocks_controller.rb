class StocksController < ApplicationController
  before_action :check_admin, only: %w[index new create edit update destroy]
  def index
    @stock = Stock.all
    # render json: @stock.to_json(only: [:stock_title, :stock_text, :created_at], methods: [:image_url])
  end

  def create
    Stock.create(news_params)
    redirect_to stocks_path
  end

  def new
    @stock = Stock.new
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def update
    if Stock.find(params[:id]).update(news_params)
      flash.now[:notice] = "Новость успешно обновлена"
      redirect_to stocks_path
    else
      render :edit
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy!
    render json: {success: true}
  end

  def stock_switch
    @stock = Stock.find(params[:id])
    @stock.update_attributes(enabled: !@stock.enabled)
    result = @stock.enabled ? {success: true} : {success: false}
    render json: result
  end

  private

  def news_params
    params.require(:stock).permit(:stock_title, :stock_text, :image)
  end

end