json.array!(@members) do |member|
  json.extract! member, :id, :Name, :contact, :Address, :NIC
  json.url member_url(member, format: :json)
end
