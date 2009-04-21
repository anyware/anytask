# This will guess the User class
Factory.define :task do |t|
  t.name "MyTask"
  t.priority 1
  t.status "PENDING"
  t.user {|u| u.association(:user)}
end
