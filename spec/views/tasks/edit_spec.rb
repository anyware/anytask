require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/edit.html.erb" do
  include TasksHelper
  
  before do
    @task = mock_model(Task)
    @task.stub!(:name).and_return("MyString")
    @task.stub!(:description).and_return("MyText")
    @task.stub!(:priority).and_return("1")
    @task.stub!(:status).and_return()
    assigns[:task] = @task

    template.should_receive(:object_url).twice.and_return(task_path(@task)) 
    template.should_receive(:collection_url).and_return(tasks_path) 
  end

  it "should render edit form" do
    render "/tasks/edit.html.erb"
    
    response.should have_tag("form[action=#{task_path(@task)}][method=post]") do
      with_tag('input#task_name[name=?]', "task[name]")
      with_tag('textarea#task_description[name=?]', "task[description]")
      with_tag('input#task_priority[name=?]', "task[priority]")
      with_tag('input#task_status[name=?]', "task[status]")
    end
  end
end


