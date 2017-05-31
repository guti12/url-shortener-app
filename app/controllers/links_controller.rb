class LinksController < ApplicationController

	def index
		
	end

	def new
		
	end

	def create
		link = Links.new(
										user_id: params[:user_id],
										slug: params[:slug],
										target_url: params[:target_url]
										)
		link.save
		redirect_to "/links"
	end
end
