class PagesController < ApplicationController

  def show
    template = "/pages/#{params[:id]}"
    if template_exists? template
      render template
    else
      not_found
    end
  end

end