class FeedbacksController < ApplicationController
  before_action :check_admin, only: %w[admin]

  def index
    @feedbacks = Feedback.last_four
  end

  def admin
    @feedbacks = Feedback.paginated(params[:page])
  end

  def new
    @feedback = Feedback.new
  end

  def create
    Feedback.create!(feedback_params)
    redirect_to feedbacks_path
  end


  def destroy
    Feedback.find(params[:id]).destroy
    head :ok
  end


  private
  def feedback_params
    params.permit(:feedback_author, :feedback_text)
  end
end