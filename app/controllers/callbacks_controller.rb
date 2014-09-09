class CallbacksController < ApplicationController
  before_action :check_admin, only: %w[index]
  def index
    @callbacks = ::Callback.all.paginate(page: params[:page], per_page: 10)
  end

  def create
    @callback = ::Callback.new(callback_params)
    @callback.save
    flash[:notice] = "Ваша просьба о звонке успешно отпарвлена!"
    redirect_to new_contact_messages_path
  end

  private
  def callback_params
    params.require(:callback).permit(:call_surname, :call_name, :call_second_name, :call_phone, :call_email)
  end
end