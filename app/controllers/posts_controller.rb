class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	    @post = Post.new
	    @post.title = params[:title]
	    @post.description = params[:description]
	    @post.save
	    redirect_to post_path(@post)
	end
	
	def edit
		@post = Post.find(params[:id])
	end
	 
	def update
		@post = Post.find(params[:id])
		if @post.title != params[:title]
			@post.update(title: params[:title])
		end
		
		if @post.description != params[:description]
			@post.update(description: params[:description])
		end
		redirect_to post_path(@post)
	end
end