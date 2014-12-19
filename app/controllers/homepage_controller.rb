class HomepageController < ApplicationController

  def index
    @slider = Slider.active
  end

end