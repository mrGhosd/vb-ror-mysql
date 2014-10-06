module Api
  class SharesController < ApplicationController
    # protect_from_forgery except: :index

    def index
      @share = Share.all
      render json: @share.to_json, status: 200
    end
  end
end