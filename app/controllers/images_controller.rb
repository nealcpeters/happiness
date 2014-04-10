class ImagesController < ApplicationController
	def index
		@image = Image.all.sample
	end

  def up
    upvote = Image.find(params[:id])
    upvote.update_attributes(up: upvote.up + 1)
    redirect_to root_path
  end

  def down
    downvote = downvote.find(params[:id])
    downvote.update_attributes(down: downvote.down + 1)
    redirect_to root_path
  end
end