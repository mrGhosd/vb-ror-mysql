class ContactMessagesController < ApplicationController
  before_action :check_admin, only: %w[admin]
  def admin
    @messages = ContactMessage.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @message = ContactMessage.new
    @callback = ::Callback.new
  end

  def create
    ContactMessage.create(messages_params)
    redirect_to new_contact_message_path
  end


  private
  def messages_params
    params.require(:contact_message).permit(:user_name, :user_email, :user_phone, :user_message)
  end
end