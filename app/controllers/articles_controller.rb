class ArticlesController < ApplicationController
  before_action :require_logged_in

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @user = current_user
    @article = @user.articles.new(post_params)

    if @article.save
      redirect_to root_path
      flash[:success] = 'Article created Succesfully'
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:article).permit(:text, :title, :category_id, :image)
  end
end
