# This will guess the User class
Factory.define :user do |u|
  u.first_name 'Mathieu'
  u.last_name  'Rousseau'
  u.login "mathieu"
  u.password "mathieu"
  u.password_confirmation "mathieu"
  u.email "mathieu.rousseau.31@gmail.com"
  u.single_access_token "k3cFzLIQnZ4MHRmJvJzg"
end
