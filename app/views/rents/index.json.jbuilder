json.array!(@rents) do |rent|
  json.extract! rent, :id, :movie_id, :member_id, :borrowDate
  json.url rent_url(rent, format: :json)
end
