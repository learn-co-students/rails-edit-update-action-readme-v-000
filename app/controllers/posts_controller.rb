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
		#edit form tag needs arg for edit and a put method
		@post = Post.find(params[:id])
	end

	def update
		#raise params.insepct
		@post = Post.find([:id])
		@post.update(title: params[:title], description: params[:description])
		redirect_to post_path(@post)
	end
end
