class HomeController < ApplicationController
  before_action :require_logged_in
  def index
    @categories = Category.all
    @most_voted_article = most_voted_article
  end
end
