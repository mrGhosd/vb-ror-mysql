class StaticPagesController < ApplicationController

  def page
    render "/static_pages/#{params[:page_id]}"
  end

end