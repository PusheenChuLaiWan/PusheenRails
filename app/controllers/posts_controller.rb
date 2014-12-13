class PostsController < ApplicationController
	require 'rest_client'
	require 'time'
	require 'json'

	def index
		@jsonString = 
		RestClient.get 'http://106.186.30.234/api/devices/c6a89825f1364bed/datastreams', 
		{
			:params => 
			{
				:apikey => 'c3ec40a829b5424c', 
				:device_id => 'c6a89825f1364bed',
			} ,
			:accept => :json
		} 
		@res = JSON.parse( @jsonString )
		respond_to do |format|
	      format.html # new.html.erb
	      format.json { render :json => @jsonString }
	    end
	end

	def create
		@post = Post.new( post_params )
		@post.save 
		redirect_to posts_faq_path 
	end

	def show
	end

	def update 
	end

	def new
	end

	def faq
		@post = Post.new 
	end
private

	def post_params
		params.require( :post ).permit( :name , :email, :message ) 
	end
end
