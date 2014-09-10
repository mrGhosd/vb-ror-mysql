class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    @role.update_attributes(roles_params)
    @role.save
    redirect_to roles_path
  end

  def create
    @role = Role.new(roles_params)
    @role.save
    redirect_to roles_path
  end

  def destroy
    role = Role.find(params[:id])
    role.destroy
    head :ok
  end

  private
  def roles_params
    params.require(:role).permit(:value, :active, :default_chosen)
  end
end