json.extract! blog, :id, :tittle, :descriptions, :created_at, :updated_at
json.url blog_url(blog, format: :json)
