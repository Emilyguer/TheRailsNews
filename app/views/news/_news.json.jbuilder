json.extract! news, :id, :title, :author, :content, :publication_date, :created_at, :updated_at
json.url news_url(news, format: :json)
