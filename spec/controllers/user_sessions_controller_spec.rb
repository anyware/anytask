require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'authlogic/test_case'

describe UserSessionsController do

  #Delete this example and add some real ones
  it "should use UserSessionsController" do
    controller.should be_an_instance_of(UserSessionsController)
  end

  it "should login successfully with valid user" do
    activate_authlogic
    user = Factory.create(:user)
    post :create, :user_session => {:login => user.login, :password => user.password}
    user_session = UserSession.find
    user_session.should_not be_nil
    user_session.user.should == User.find_by_login(user.login)
    assert_redirected_to account_path
  end

end
