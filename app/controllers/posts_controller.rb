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
		@post.update(title: params[:title], description: params[:description])
		redirect_to post_path(@post)
	end
end

# Extra credit?
# Not sure if @post.model == Post would work
# Also not sure how to define a method that does create/edit/update
# Need to do more googling
#
# def create/edit/update
# 	if @post.model == Post
# 		@post = Post.find(params[:id])
# 		@post.update(title: params[:title], description: params[:description])
# 		redirect_to post_path(@post)
# 	else
# 		@post = Post.new
# 		@post.title = params[:title]
# 		@post.description = params[:description]
# 		@post.save
# 		redirect_to post_path(@post)
# 	end
# end
