class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    # @task = Task.find(params[:id])
    @article.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def task_params
    params.require(:article).permit(:title, :content)
  end
end
