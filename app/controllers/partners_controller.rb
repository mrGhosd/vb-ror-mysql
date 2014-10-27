class PartnersController < ApplicationController
  before_action :check_admin, only: %w[admin new create edit update destroy]

  def index
    @partners = Partner.enabled
  end

  def admin
    @partners = Partner.all
  end

  def create
    Partner.create(partners_params)
    redirect_to admin_partners_path
  end

  def new
    @partner = Partner.new
  end

  def update
    Partner.find(params[:id]).update(partners_params)
    redirect_to admin_partners_path
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def destroy
    Partner.find(params[:id]).destroy!
    render json: {success: true}
  end

  def partner_switch
    Partner.find(params[:id]).toggle!(:enabled)
    head :ok
  end

  private
  def partners_params
    params.require(:partner).permit(:partner_title, :partner_description, :partner_url, :image)
  end
end