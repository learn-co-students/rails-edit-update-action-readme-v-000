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

	def edit
		@post = Post.find(params[:id])
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
  	@post = Post.find(params[:id])
#guess what? we moved the fuckin' colon again. Why? Who knows? It's Ruby!
  	@post.update(title: params[:title], description: params[:description])
  	redirect_to post_path(@post)
  end
end

#good LORD! was this lesson ever boring. I wish it was an exception. 