class Task < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :status, :on => :create, :message => "can't be blank"
  validates_presence_of :priority, :on => :create, :message => "can't be blank"
  belongs_to :user
end
