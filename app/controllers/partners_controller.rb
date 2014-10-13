class PartnersController < ApplicationController

  def index
   @partners = Partner.all
  end

  private
  def partner_params
    params.require(:partner).permit(:role, :address, :phone, :web)
  end

end
