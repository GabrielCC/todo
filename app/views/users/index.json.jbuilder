json.array!(@users) do |user|
  json.extract! user, :description, :done
  json.url user_url(user, format: :json)
end
