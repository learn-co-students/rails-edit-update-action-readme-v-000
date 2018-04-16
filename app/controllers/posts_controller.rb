class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	
	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  redirect_to post_path(@post) if !!@post.save
	end

	def show
		@post = Post.find_by(:id => params["id"])
	end
	
	def edit
	  @post = Post.find_by(:id => params["id"])
	end
	
	def update
    @post = Post.find_by(:id => params["id"])
    @post.update(:title => params["title"], :description => params["description"])
    redirect_to post_path(@post)
  end
end