class JubilationsController < ApplicationController

  def index
    @jubilations = Jubilation.all.sort{|jubilee| jubilee.vote_score}
  end

  def up
    jubilee = Jubilation.find(params[:id])
    jubilee.update_attributes(up: jubilee.up + 1)
    redirect_to jubilations_path
  end

  def down
    jubilee = Jubilation.find(params[:id])
    jubilee.update_attributes(up: jubilee.up - 1)
    redirect_to :index
  end

end