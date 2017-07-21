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
		# raise params.inspect
		@post = Post.find_by(id: params[:id])
		redirect_to @post if @post.update(post_params)
	end

	private

		def post_params
			params.permit(:title, :description)
		end

end