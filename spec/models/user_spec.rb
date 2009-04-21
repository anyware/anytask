require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @valid_attributes = {
      :login => "NewUser",
      :password => "12345678",
      :password_confirmation => "12345678",
      :email => "newuser@newuser.com",
      :first_name => "Mathieu",
      :last_name => "Rousseau"
    }
  end

  it "should create a new instance given valid attributes" do
    @user = User.create!(@valid_attributes)
  end
  
  it "should have a valid factory" do
    Factory.build(:user).should be_valid
  end
  
  it "should not be valid for empty instance" do
    @user = User.new
    @user.should_not be_valid
  end
  
  
end
