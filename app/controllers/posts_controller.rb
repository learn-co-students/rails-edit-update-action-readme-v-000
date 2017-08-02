class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		get_post
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
    get_post
  end

  def update
    get_post
    @post.update(
      title: params[:title],
      description: params[:description]
    )

    redirect_to @post

  end

  private

    def get_post
      @post = Post.find(params[:id])
    end

end