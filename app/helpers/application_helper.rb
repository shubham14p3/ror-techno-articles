module ApplicationHelper
  def vote_or_unvote(article)
    if logged_in?
      vote = Vote.find_by(article: article, user: current_user)
      if vote
        link_to('Unvote', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
      else
        link_to('Vote!', article_votes_path(article_id: article.id), method: :post)
      end
    else
      link_to('Must be logged in to vote', login_path)
    end
  end
end
