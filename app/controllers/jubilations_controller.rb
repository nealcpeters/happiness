class JubilationsController < ApplicationController

  def index
    @jubilations = Jubilation.all
  end

end