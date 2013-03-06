class LinksController < ApplicationController

	def home
		@link = Link.new
	end

	def show
		@link = Link.find(params[:id])
	end

	def create
		@link = Link.new(params[:link])
		@link.short_url = (0...6).map{(65+rand(26)).chr}.join
		if @link.save
			respond_to do |format|
				format.html { redirect_to link_path(@link)}
				format.js
			end
		end
		
	end

	def incoming
		if @link = Link.find_by_short_url(params[:url])
			redirect_to @link.long_url
		else
			redirect_to root_path
		end
	end

	def destroy
	end

end
