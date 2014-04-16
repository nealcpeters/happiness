class InspirationsController < ApplicationController
  def index
    @inspirations = Inspiration.all.sort_by{|inspir| -inspir.vote_score}
  end

  def create
    Inspiration.create(inspiration_params.merge(up: 0, down: 0))
    redirect_to inspirations_path
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

  def inspiration_params
    params.require(:inspiration).permit(:content)
  end
end