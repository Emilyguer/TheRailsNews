class PagesController < ApplicationController

  def home
    @latest_news = News.order(publication_date: :desc).limit(5)
  end

  def term
  end

  def privacy
  end

  def copyright
  end
end
