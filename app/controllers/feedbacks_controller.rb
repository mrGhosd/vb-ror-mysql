class FeedbacksController < ApplicationController
  before_action :check_admin, only: %w[admin]

  def index
    @feedbacks = Feedback.limit(4).order(created_at: :desc)
  end

  def admin
    @feedbacks = Feedback.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
    redirect_to feedbacks_path
  end


  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    head :ok
  end


  private
  def feedback_params
    params.permit(:feedback_author, :feedback_text)
  end
end