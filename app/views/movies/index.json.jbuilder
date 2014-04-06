json.array!(@movies) do |movie|
  json.extract! movie, :id, :Name, :Language, :Genera, :Year
  json.url movie_url(movie, format: :json)
end
