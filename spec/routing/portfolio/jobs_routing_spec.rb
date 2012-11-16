require 'spec_helper'

describe Portfolio::JobsController, "#routes" do
  it "routes to #index" do
    get("/portfolio/jobs").should route_to("portfolio/jobs#index")
  end
  
  it "routes to #show" do
    get("/portfolio/jobs/job-title").should route_to("portfolio/jobs#show", job: 'job-title')
  end
end