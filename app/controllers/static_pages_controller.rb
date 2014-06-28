class StaticPagesController < ApplicationController

  def page
    case params[:page_id]
      when "loan"
        redirect_to root_path
      when "feedback"
        redirect_to feedbacks_path
      when "partners"
        redirect_to partners_path
      when "faq"
        redirect_to faqs_path
      when "shares"
        redirect_to shares_path
      when "why_we"
        why_we
      when "about_us"
        about_company
      when "service"
        service
      when "contacts"
        redirect_to new_contact_messages_path
      when "deposit"
        redirect_to new_deposits_path
      else
        render "/static_pages/#{params[:page_id]}"
    end
  end

  def why_we
    @page = Static_page.find(1)
    render "/static_pages/why_we"
  end

  def about_company
    @page = Static_page.find(2)
    render "/static_pages/about_us"
  end

  def service
    @page = Static_page.find(3)
    render "/static_pages/service"
  end


end
