require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/index.html.erb" do
  include TasksHelper
  
  before(:each) do
    task_98 = mock_model(Task)
    task_98.should_receive(:name).and_return("MyString")
    task_98.should_receive(:description).and_return("MyText")
    task_98.should_receive(:priority).and_return("1")
    task_98.should_receive(:status).and_return()
    task_99 = mock_model(Task)
    task_99.should_receive(:name).and_return("MyString")
    task_99.should_receive(:description).and_return("MyText")
    task_99.should_receive(:priority).and_return("1")
    task_99.should_receive(:status).and_return()

    assigns[:tasks] = [task_98, task_99]

    template.stub!(:object_url).and_return(task_path(task_99))
    template.stub!(:new_object_url).and_return(new_task_path) 
    template.stub!(:edit_object_url).and_return(edit_task_path(task_99))
  end

  it "should render list of tasks" do
    render "/tasks/index.html.erb"
    response.should have_tag("tr>td", "MyString", 2)
    response.should have_tag("tr>td", "MyText", 2)
    response.should have_tag("tr>td", "1", 2)
    response.should have_tag("tr>td","1", 2)
  end
end

