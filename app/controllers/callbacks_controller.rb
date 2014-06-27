class CallbacksController < ApplicationController
  def index

  end

  def create
    # binding.pry
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