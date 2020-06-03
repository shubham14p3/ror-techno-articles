module VoteHelper
  def most_voted_article
    articles = Article.all
    best_count = 0
    best_article = Article.all.first
    articles.each do |article|
      if article.votes.size > best_count
        best_article = article
        best_count = article.votes.size
      end
    end
    best_article
  end

  def vote_or_unvote(article, style = 'label-form')
    if logged_in?
      vote = Vote.find_by(article: article, user: current_user)

      if vote
        link_to (fa_icon 'thumbs-o-down'), article_vote_path(id: vote.id, article_id: article.id),
                class: style, method: :delete
      else
        link_to (fa_icon 'thumbs-o-up '), article_votes_path(article_id: article.id), class: style, method: :post
      end

    else
      link_to('Must be logged in to vote', login_path)
    end
  end
end
