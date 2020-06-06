class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.include(:id).articles.ordered_most_recent
  end

  def create
    @category = Category.new(category_params)
    if @category.save

      redirect_to new_article_path
      flash[:success] = 'Category created succesfully '
    else
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
