module Api
  class StocksController < ApplicationController
    protect_from_forgery except: :login

    def index
      @stock = Stock.all
      render json: @stock.to_json(methods: [:image_url])
    end
  end
end