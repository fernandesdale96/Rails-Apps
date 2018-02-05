json.post do
  json.array! @list do |list|
    json.id list.user_id
    json.content list.content
  end
end
