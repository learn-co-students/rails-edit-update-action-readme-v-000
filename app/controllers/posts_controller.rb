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
		update_attributes(@post)
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		update_attributes(@post)
		redirect_to post_path(@post)
	end

	private

		def update_attributes(post)
			post.title = params[:title] if params[:title] != ""
			post.description = params[:description] if params[:description] != ""
			post.save
		end
end
