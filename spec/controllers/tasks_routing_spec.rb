require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do
  describe "route generation" do

    it "should map { :controller => 'tasks', :action => 'index', :user_id => '1' } to /users/1/tasks" do
      route_for(:controller => "tasks", :action => "index", :user_id => "1").should == "/users/1/tasks"
    end
  
    it "should map { :controller => 'tasks', :action => 'new', :user_id => '1' } to /users/1/tasks/new" do
      route_for(:controller => "tasks", :action => "new", :user_id => "1").should == "/users/1/tasks/new"
    end
  
    it "should map { :controller => 'tasks', :action => 'show', :id => '1', :user_id => '1'} to /users/1/tasks/1" do
      route_for(:controller => "tasks", :action => "show", :id => "1", :user_id => "1", :user_id => "1").should == "/users/1/tasks/1"
    end
  
    it "should map { :controller => 'tasks', :action => 'edit', :id => '1', :user_id => '1' } to /users/1/tasks/1/edit" do
      route_for(:controller => "tasks", :action => "edit", :id => "1", :user_id => "1").should == "/users/1/tasks/1/edit"
    end
  
    it "should map { :controller => 'tasks', :action => 'update', :id => '1', :user_id => '1' } to /users/1/tasks/1" do
      route_for(:controller => "tasks", :action => "update", :id => "1", :user_id => "1").should == {:path => "/users/1/tasks/1", :method => :put}
    end
  
    it "should map { :controller => 'tasks', :action => 'destroy', :id => '1', :user_id => '1' } to /users/1/tasks/1" do
      route_for(:controller => "tasks", :action => "destroy", :id => "1", :user_id => "1").should == {:path => "/users/1/tasks/1", :method => :delete}
    end
  end

  describe "route recognition" do

    it "should generate params { :controller => 'tasks', action => 'index', :user_id => '1' } from GET /users/1/tasks" do
      params_from(:get, "/users/1/tasks").should == {:controller => "tasks", :action => "index", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'new', :user_id => '1' } from GET /users/1/tasks/new" do
      params_from(:get, "/users/1/tasks/new").should == {:controller => "tasks", :action => "new", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'create', :user_id => '1' } from POST /users/1/tasks" do
      params_from(:post, "/users/1/tasks").should == {:controller => "tasks", :action => "create", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'show', id => '1', :user_id => '1' } from GET /users/1/tasks/1" do
      params_from(:get, "/users/1/tasks/1").should == {:controller => "tasks", :action => "show", :id => "1", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'edit', id => '1', :user_id => '1' } from GET /users/1/tasks/1;edit" do
      params_from(:get, "/users/1/tasks/1/edit").should == {:controller => "tasks", :action => "edit", :id => "1", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'update', id => '1', :user_id => '1' } from PUT /users/1/tasks/1" do
      params_from(:put, "/users/1/tasks/1").should == {:controller => "tasks", :action => "update", :id => "1", :user_id => "1"}
    end
  
    it "should generate params { :controller => 'tasks', action => 'destroy', id => '1', :user_id => '1' } from DELETE /users/1/tasks/1" do
      params_from(:delete, "/users/1/tasks/1").should == {:controller => "tasks", :action => "destroy", :id => "1", :user_id => "1"}
    end
  end
end
