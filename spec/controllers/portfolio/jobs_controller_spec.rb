require 'spec_helper'

describe Portfolio::JobsController do

  describe "GET 'index'" do
    before { get :index }
    subject { response }
    
    its(:status) { should eq(200) }
    
    it "should assign @jobs" do
      Job.should have_received(:all)
    end
  end

  describe "GET 'show'" do
    before { get :show, job: 'job-name' }
    subject { response }
    
    its(:status) { should eq(200) }
    
    it "should find job by slug"
  end

end
