json.post do
  json.content @post.content
  json.id @post.user_id
end
