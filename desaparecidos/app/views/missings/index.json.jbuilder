json.array!(@missings) do |missing|
  json.extract! missing, :id, :name, :since, :where_missing, :detail, :status, :picture
  json.url missing_url(missing, format: :json)
end
