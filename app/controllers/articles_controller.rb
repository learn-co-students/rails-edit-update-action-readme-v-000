class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
    # My guess: #find_by_id is better.
  end

  def update
    # raise params.inspect
    # puts params.inspect

    @article = Article.find(params[:id]) 
    # Note: The article's id is stored in params[:id], NOT params[:article][:id]
    
    @article.update(title: params[:article][:title], description: params[:article][:description])
    # @article.update(params[:article]) # This gets a Forbidden Attributes error.

    redirect_to article_path(@article)
  end
end
