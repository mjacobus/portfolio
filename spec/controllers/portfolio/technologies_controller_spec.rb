require 'spec_helper'

describe Portfolio::TechnologiesController do

  describe "GET 'index'" do
    before { get :index }
    subject { response }
    
    its(:status) { should eq(200) }
    
    it "should assign @technologies" do
      Technology.should have_received(:all)
    end
  end

end
