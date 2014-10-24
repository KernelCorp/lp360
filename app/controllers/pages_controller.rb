class PagesController < ApplicationController

  def show
    template = "/pages/#{params[:id]}"
    @page = Page.find params[:id]
    if template_exists? template
      render template
    else
      render
    end
  end
end