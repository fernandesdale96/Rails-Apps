json.user do
  json.id @user.id
  json.username @user.username
  json.password @user.password
  json.created_at @user.created_at
end
