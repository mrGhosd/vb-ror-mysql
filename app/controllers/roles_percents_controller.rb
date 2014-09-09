class RolesPercentsController < ApplicationController
  before_action :check_admin, only: %w[index new create edit update destroy]

  def index
    @percents = RolesPercent.all
  end

  def new
    @percent = RolesPercent.new
  end

  def create
    @percent = RolesPercent.new(role_percent_params)
    if @percent.save
      redirect_to roles_percents_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def role_data_list
    params[:class_name].constantize.all
    head :ok
  end

  private
  def role_percent_params
    params.require(:roles_percent).permit(:role_id, :percent_id)
  end
end