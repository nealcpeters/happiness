class InspirationsController < ApplicationController

  def index
    @inspirations = Inspiration.all
  end

end