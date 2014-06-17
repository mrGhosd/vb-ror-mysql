class StaticPagesController < ApplicationController

  def page
    case params[:page_id]
      when "loan"
        redirect_to root_path
      when "feedback"
        redirect_to feedbacks_path
      when "partners"
        redirect_to partners_path
      else
        render "/static_pages/#{params[:page_id]}"
    end
  end

  def feedback
    @name = "Hello, world!"
  end

end