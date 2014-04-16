class ImagesController < ApplicationController
	def index
		@image = Image.all.sample
    @jubilations = Jubilation.all.sort_by{|jubilee| -jubilee.vote_score}

	end

  def create
    Image.create(path: params[:path])
    redirect_to root_path
  end

  def up
    upvote = Image.find(params[:id])
    Vote.create(votable_id: upvote.id, votable_type: "image", ip_address: request.remote_ip)
    upvote.update_attributes(up: upvote.up + 1)
    redirect_to root_path
  end

  def down
    downvote = downvote.find(params[:id])
    Vote.create(votable_id: downvote.id, votable_type: "image", ip_address: request.remote_ip)
    downvote.update_attributes(down: downvote.down + 1)
    redirect_to root_path
  end
end