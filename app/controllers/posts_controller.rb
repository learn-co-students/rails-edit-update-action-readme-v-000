require 'pry'

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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post))
    # binding.pry
    # raise @post.id
    redirect_to post_path(@post)
  end

end
