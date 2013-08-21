json.array!(@wallposts) do |wallpost|
  json.extract! wallpost, :name, :content
  json.url wallpost_url(wallpost, format: :json)
end
