class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
        # byebug
    # nominal
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
    # byebug
    # nominal
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:title], description: params[:description])
    redirect_to article_path(@article)
    # byebug
#     @article
# #<Article id: 1, title: nil, description: nil, created_at: "2018-12-23 07:03:24", updated_at: "2018-12-23 07:03:24">
# (byebug) params
# {"utf8"=>"✓", "_method"=>"patch", "article"=>{"title"=>"My edit", "description"=>"My article description"}, "commit"=>"Submit Article", "controller"=>"articles", "action"=>"update", "id"=>"1"}
# (byebug) params[:id]
# "1"
# (byebug) Article.all
# #<ActiveRecord::Relation [#<Article id: 1, title: nil, description: nil, created_at: "2018-12-23 07:03:24", updated_at: "2018-12-23 07:03:24">]>
# (byebug) article_path(@article)
# "/articles/1"
  end  
end
