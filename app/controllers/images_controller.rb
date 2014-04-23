class ImagesController < ApplicationController
	def index
    @image = Image.all.sample
    if request.xhr?
		  reply = {path:@image.path}
      render json: reply
    else
      @jubilations = Jubilation.all.sort_by{|jubilee| -jubilee.vote_score}
    end
	end

  def create
    Image.create(path: params[:path])
    redirect_to root_path
  end

  def up
    upvote = Image.find(params[:id])
    new_vote = Vote.new(votable_id: upvote.id, votable_type: "image", ip_address: request.remote_ip)
    if new_vote.save
      upvote.update_attributes(up: upvote.up + 1)
    end
    redirect_to root_path
  end

  def down
    downvote = Image.find(params[:id])
    new_vote = Vote.new(votable_id: downvote.id, votable_type: "image", ip_address: request.remote_ip)
    if new_vote.save
      downvote.update_attributes(down: downvote.down + 1)
    end
    redirect_to root_path
  end
end