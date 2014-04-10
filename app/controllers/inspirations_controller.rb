class InspirationsController < ApplicationController

  def index
    @inspirations = Inspiration.all.sort{|inspir| inspirations.vote_score}
  end

  def up
    inspir = Inspiration.find(params[:id])
    inspir.update_attributes(up: inspir.up + 1)
    redirect_to inspirations_path
  end

  def down
    inspir = Inspiration.find(params[:id])
    inspir.update_attributes(down: inspir.down + 1)
    redirect_to inspirations_path
  end

end