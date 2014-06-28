class ContactMessagesController < ApplicationController

  def index
    @messages = ContactMessage.all
  end

  def new
    @message = ContactMessage.new
    @callback = ::Callback.new
  end

  def create
    @message = ContactMessage.new(messages_params)
    @message.save
    redirect_to new_contact_messages_path
  end

  def destroy

  end

  private
  def messages_params
    params.require(:contact_message).permit(:user_name, :user_email, :user_phone, :user_message)
  end
end