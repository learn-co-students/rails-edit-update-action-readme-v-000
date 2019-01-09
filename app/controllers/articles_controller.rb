class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    binding.pry
  end

  def new
    @article = Article.new
    binding.pry
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    binding.pry
    @article.update(:title => params[:title], :description => params[:description])
    redirect_to article_path
  end
end
