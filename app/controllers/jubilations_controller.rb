class JubilationsController < ApplicationController

  def index
    @jubilations = Jubilation.all.sort_by{|jubilee| -jubilee.vote_score}
  end

  def create
    Jubilation.create(jubilation_params.merge(up: 0, down: 0))
    redirect_to jubilations_path
  end

  def up
    jubilee = Jubilation.find(params[:id])
    jubilee.update_attributes(up: jubilee.up + 1)
    redirect_to jubilations_path
  end

  def down
    jubilee = Jubilation.find(params[:id])
    jubilee.update_attributes(down: jubilee.down + 1)
    redirect_to jubilations_path
  end

  def jubilation_params
    params.require(:jubilation).permit(:content)
  end
end