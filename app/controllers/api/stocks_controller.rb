module Api
  class StocksController < ApplicationController
    protect_from_forgery except: :login

    def index
      @stock = Stock.available
      render json: @stock.to_json(methods: [:image_url])
    end

    def show
      stock = Stock.find(params[:id])
      render json: stock.to_json(methods: [:image_url])
    end
  end
end