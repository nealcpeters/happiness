class JubilationsController < ApplicationController

  def index
    @jubilations = Jubilation.all.sort_by{|jubilee| -jubilee.vote_score}
  end

  def create
    Jubilation.create(jubilation_params.merge(up: 0, down: 0))
    if xhr?
      
    else  
      redirect_to jubilations_path
    end
  end

  def up
    jubilee = Jubilation.find(params[:id])
    new_vote = Vote.new(votable_id: jubilee.id, votable_type: "jubilation", ip_address: request.remote_ip)
    if new_vote.save
      jubilee.update_attributes(up: jubilee.up + 1)
    end
    redirect_to jubilations_path
  end

  def down
    jubilee = Jubilation.find(params[:id])
    new_vote = Vote.new(votable_id: jubilee.id, votable_type: "jubilation", ip_address: request.remote_ip)
    if new_vote.save
      jubilee.update_attributes(up: jubilee.down + 1)
    end
    redirect_to jubilations_path
  end

  def jubilation_params
    params.require(:jubilation).permit(:content)
  end
end