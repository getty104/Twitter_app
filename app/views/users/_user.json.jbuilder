json.extract! user, :id, :name, :account, :image,:data_type, :created_at, :updated_at
json.url user_url(user, format: :json)