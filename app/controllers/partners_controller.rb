class PartnersController < ApplicationController

  def index
    @partners = Partner.where(enabled: true)
  end

  def index_admin
    @partners = Partner.all
  end

  def create
    @partner = Partner.new(partners_params)
    @partner.save
    redirect_to new_partners_path
  end

  def new
    @partner = Partner.new
  end

  def update
    @partner = Partner.find(params[:id])
    if @partner.update_attributes(partners_params)
      flash[:notice] = "Информация о партнере успешно обновлена"
      redirect_to partners_path
    else
      render :edit
    end
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def destroy
    @partner = Partner.find(params[:id])
    @partner.destroy!
    render json: {success: true}
  end

  def partner_switch
    @partner = Partner.find(params[:id])
    @partner.update_attributes(enabled: !@partner.enabled)
    result = @partner.enabled ? {success: true} : {success: false}
    render json: result
  end

  private
  def partners_params
    params.require(:partner).permit(:partner_title, :partner_description, :partner_url, :image)
  end
end