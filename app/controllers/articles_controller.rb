class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = policy_scope(Article)
    word = params[:search]
    if params[:search]
      @articles = Article.where("title LIKE ?", "%#{word}%")
    else
      @articles = Article.all
    end

  end

  def searching
    @articles = policy_scope(Article)
    word = params[:search]
    if params[:search]
      @articles = Article.where("title LIKE ?", "%#{word}%")
    else
      @articles = Article.all
    end
  end

  def show
    authorize @article
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = current_user.articles.build(article_params)
    authorize @article
    @article.save

    redirect_to root_path
  end

  def edit
    authorize @article
  end

  def update

    @article.update(article_params)
    authorize @article

    redirect_to root_path
  end

  def destroy
    authorize @article
    @article.destroy

    redirect_to root_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :content, :picture, :description, :first, :themes, :user_id, :publish)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
