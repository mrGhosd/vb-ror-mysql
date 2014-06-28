class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
    redirect_to feedbacks_path
  end

  def show
    @feedback = Feedback.limit(4).order(created_at: :desc)
  end

  def update

  end

  def edit

  end

  private
  def feedback_params
    params.permit(:feedback_author, :feedback_text)
  end
end