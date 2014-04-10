class ImagesController < ApplicationController
	def index
		@image_path = Image.all.sample.path
	end
end