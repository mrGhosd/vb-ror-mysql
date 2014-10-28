class FaqsController < ApplicationController
  before_action :check_admin, only: %w[admin new create edit update destroy]

  def index
    @faq = Faq.last_ten
  end

  def admin
    @faq = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    Faq.create(faq_params)
    redirect_to admin_faqs_path
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
    Faq.find(params[:id]).update(faq_params)
    redirect_to admin_faqs_path
  end

  def destroy
    Faq.find(params[:id]).destroy!
    render json: {success: true}
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end

