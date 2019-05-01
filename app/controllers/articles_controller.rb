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
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  #def update
  #  @article = Article.find(params[:id]) 
      #query the db for the Article record 
      #that matches the :id passed to the route & store it to an instance variable
  #  @article.update(title: params[:title], description: params[:description])
      #Update the values passed from the form(update method supplied by ActiveRecord
      #not the update method we're creating)
      #eg. Article.find(1).update(title: "I'm Changed", description: "And here too!")
      #Save to the db

  #  redirect_to article_path(@article)
      #Redirect the user to the show page so they can see the update record.
  #end

end
