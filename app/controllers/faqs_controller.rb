class FaqsController < ApplicationController

  def index
    @faq = Faq.limit(10)
  end

  def admin_show
    @faq = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)
    @faq.save
    redirect_to faqs_path
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def update
    @faq = Faq.find(params[:id])
    if @faq.update_attributes(news_params)
      flash.now[:notice] = "Вопрос/ответ успешно изменен"
      redirect_to faqs_path
    else
      render :edit
    end
  end

  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy!
    render json: {success: true}
  end

  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end

