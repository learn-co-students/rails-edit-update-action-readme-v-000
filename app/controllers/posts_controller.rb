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
		@post = Post.find_by(params[:id])
	end

	def update
		@post = Post.find_by(params[:id])
		if params[:title].empty?
			@post.update(title: @post.title, description: params[:description])
		elsif	params[:description].empty?
			@post.update(title: params[:title], description: @post.description)
		else
			@post.update(title: params[:title], description: params[:description])
		end
		redirect_to post_path(@post)
	end
end
