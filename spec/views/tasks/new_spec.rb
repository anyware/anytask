require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/new.html.erb" do
  include TasksHelper
  
  before(:each) do
    @task = mock_model(Task)
    @task.stub!(:new_record?).and_return(true)
    @task.stub!(:name).and_return("MyString")
    @task.stub!(:description).and_return("MyText")
    @task.stub!(:priority).and_return("1")
    @task.stub!(:status).and_return()
    assigns[:task] = @task


    template.stub!(:object_url).and_return(task_path(@task)) 
    template.stub!(:collection_url).and_return(tasks_path) 
  end

  it "should render new form" do
    render "/tasks/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", tasks_path) do
      with_tag("input#task_name[name=?]", "task[name]")
      with_tag("textarea#task_description[name=?]", "task[description]")
      with_tag("input#task_priority[name=?]", "task[priority]")
      with_tag("input#task_status[name=?]", "task[status]")
    end
  end
end


