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
    Role.find(params[:id]).update(roles_params)
    redirect_to roles_path
  end

  def create
    role = Role.create(roles_params)
    redirect_to new_roles_percent_path(current_role_id: role.id, current_role_value: role.value)
  end

  def destroy
    Role.find(params[:id]).destroy
    head :ok
  end

  private
  def roles_params
    params.require(:role).permit(:value, :active, :default_chosen)
  end
end