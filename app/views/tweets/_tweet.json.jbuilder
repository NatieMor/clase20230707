json.extract! tweet, :id, :descripcion, :UserName, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
