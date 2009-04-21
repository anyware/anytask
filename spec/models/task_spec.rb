require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task do
  before(:each) do
    @task = Task.new
  end

  it "should be valid" do
    @task.should have(1).error_on(:name)
    @task.should have(1).error_on(:status)
    @task.should have(1).error_on(:priority)
    @task.should_not be_valid
  end

  it "should have defaulf fixtures" do
    Factory.create(:task)
    Task.find_by_name("MyTask").should_not be_nil
    #Task.first.should_not be_nil
  end
end
