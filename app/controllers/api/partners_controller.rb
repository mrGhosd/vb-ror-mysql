module Api
  class PartnersController < ApplicationController

    def index
      @partner = Partner.enabled
      render json: @partner.to_json(methods: [:image_url])
    end

    def show
      partner = Partner.find(params[:id])
      render json: partner.to_json(methods: [:image_url])
    end
  end
end