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

  # add edit and update methods here
	def edit
		@post = Post.find_by_id(params[:id])
	end

	def update
		@post = Post.find_by_id(params[:id])
		@post.title = params[:post][:title]
		@post.description = params[:post][:description]
		@post.save
		redirect_to post_path(@post)
	end

end
