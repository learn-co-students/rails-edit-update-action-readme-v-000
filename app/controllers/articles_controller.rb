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
    @article = Article.create(:title => params[:title], :description => params[:description])
    @article.save
    redirect_to article_path(@article)
  end

  def edit
     @article = Article.find(params[:id])
  end

  def update
     @article = Article.find(params[:id])
    if @article.title != params[:article][:title]
      @article.update(title: params[:article][:title])
    end
    if @article.description != params[:article][:description]
      @article.update(description: params[:article][:description])
    end
    redirect_to article_path(@article)
  end

end
