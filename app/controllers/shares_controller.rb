class SharesController < ApplicationController
  def index
    @share = Share.where(enabled: true)
  end

  def index_admin
    @share = Share.all
  end

  def create
    @share = Share.new(share_params)
    @share.save
    redirect_to shares_path
  end

  def new
    @share = Share.new
  end

  def update
    @share = Share.find(params[:id])
    if @share.update_attributes(partners_params)
      flash[:notice] = "Информация об акции успешно обновлена"
      redirect_to shares_path
    else
      render :edit
    end
  end

  def show
    @share = Share.find(params[:id])
  end

  def edit
    @share = Share.find(params[:id])
  end

  def destroy
    @share = Share.find(params[:id])
    @share.destroy!
    render json: {success: true}
  end

  def share_switch
    @share = Share.find(params[:id])
    @share.update_attributes(enabled: !@share.enabled)
    result = @share.enabled ? {success: true} : {success: false}
    render json: result
  end

  private

  def share_params
    params.require(:share).permit(:share_title, :share_text)
  end
end