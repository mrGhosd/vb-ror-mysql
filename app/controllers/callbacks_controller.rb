class CallbacksController < ApplicationController
  before_action :check_admin, only: %w[index]
  def index
    @callbacks = ::Callback.all.paginate(page: params[:page], per_page: 10)
  end

  def create
    ::Callback.create(callback_params)
    flash[:notice] = "Ваша просьба о звонке успешно отпарвлена!"
    redirect_to root_path
  end

  private
  def callback_params
    params.require(:callback).permit(:call_surname, :call_name, :call_second_name, :call_phone, :call_email)
  end
end