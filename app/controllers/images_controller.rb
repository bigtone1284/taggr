class ImagesController < ApplicationController

	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)
		if @image.save
			redirect_to image_path(@image)
		else
			render :new
		end
	end

	def edit
		@image = Image.find(params[:id])
	end

	def update
		@image = Image.find(params[:id])
		if @image.update(image_params)
			redirect_to image_path(@image)
		else
			render :edit
		end
	end

	def destroy
		image = Image.find(params[:id])
		if image.destroy
			redirect_to images_path
		else
			redirect_to edit_image_path(image)
		end
	end

	private

	def image_params
		params.require(:image).permit(:name,:nationality,:genre,:photo_url)
	end
end