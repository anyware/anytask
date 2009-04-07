require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/show.html.erb" do
  include TasksHelper
  
  before(:each) do
    @task = mock_model(Task)
    @task.stub!(:name).and_return("MyString")
    @task.stub!(:description).and_return("MyText")
    @task.stub!(:priority).and_return("1")
    @task.stub!(:status).and_return()

    assigns[:task] = @task

    template.stub!(:edit_object_url).and_return(edit_task_path(@task)) 
    template.stub!(:collection_url).and_return(tasks_path) 
  end

  it "should render attributes in <p>" do
    render "/tasks/show.html.erb"
    response.should have_text(/MyString/)
    response.should have_text(/MyText/)
    response.should have_text(/1/)
    response.should have_text(//)
  end
end

