class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    @category = Article.find_by(id: params[:article_id]).category
    if @vote.save
      redirect_to category_path(@category) and flash.now[:info] = 'You vote this article'

    else
      flash[:info] = 'You cannot vote for this article.'
    end
  end

  def destroy
    @category = Article.find_by(id: params[:article_id]).category
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to category_path(@category) and flash.now[:info] = 'You unvote for this article'

    else
      flash[:info] = 'You cannot unvote an article did not vote before.'
    end
  end
end
