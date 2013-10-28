json.array!(@items) do |item|
  json.extract! item, :description, :done
  json.url item_url(item, format: :json)
end
