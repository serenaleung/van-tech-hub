class NewsController < ApplicationController
  def index
    @articles = Article.all.order('date ASC')
  end
end
