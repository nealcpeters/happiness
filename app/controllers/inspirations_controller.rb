class InspirationsController < ApplicationController

  def index
    @inspirations = Inspiration.all.sort{|inspir| inspir.vote_score}
  end

end