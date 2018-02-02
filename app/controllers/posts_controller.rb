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
			@post = Post.find_by(id: params[:id])
	end
	def update
			 #raise params.inspect
			 #The raise method will cause the application to pause and print out the params on an error page. You could also see the params if you called puts params.inspect; using puts would simply require you to track down the data in the Rails server lo
			 @post = Post.find(params[:id])
				@post.update(title: params[:title], description: params[:description])#note this update method is from Active Record and is not the update action used by rails
				redirect_to post_path(@post)
	end
end
