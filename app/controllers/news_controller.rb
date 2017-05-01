class NewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all.order('date ASC')
  end
end
