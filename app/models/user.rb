class User < ActiveRecord::Base
  validates_presence_of :first_name, :on => :create, :message => "can't be blank"
  validates_presence_of :last_name, :on => :create, :message => "can't be blank"
  acts_as_authentic do |c|
#     c.validations_scope = :first_name
    #c.my_config_option = my_value # for available options see documentation in: Authlogic::ActsAsAuthentic
  end
end
