# This will guess the User class
Factory.define :user do |u|
  u.first_name 'Mathieu'
  u.last_name  'Rousseau'
  u.login "Mathieu"
  u.password "12345678"
  u.password_confirmation "12345678"
  u.email "mathieu.rousseau.31@gmail.com"
end