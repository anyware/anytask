require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task do
  before(:each) do
    @task = Task.new
  end

  it "should be valid" do
    @task.name = "new Task"
    @task.status = "New"
    @task.should be_valid
  end
end
