require 'spec_helper'

describe Review do
  
  before { @review = Review.new(professor_id: "135", review_id: "957",
            professor_name: "John Doe",
            content: "This is a test reivew", user_ip: "12398723",
            workload: "There is a lot of work for this class", 
            attendance: "It is ok to miss a few classes") }

  subject { @review }

  it { should respond_to(:review_id) }
  it { should respond_to(:professor_id) }
  it { should respond_to(:content) }
  it { should respond_to(:workload) }
  it { should respond_to(:attendance) }
  it { should respond_to(:professor_name) }
  it { should respond_to(:user_ip) }

  it { should be_valid }

  describe "when the prefessor's name is not present" do
    before { @review.professor_name = " " }
    it { should_not be_valid }
  end

  describe "when the content is not present" do
    before { @review.content = " " }
    it { should_not be_valid }
  end

  describe "when the attendance is not present" do
    before { @review.attendance = " " }
    it { should_not be_valid }
  end

  describe "when the workload is not present" do
    before { @review.workload = " " }
    it { should_not be_valid }
  end

end
