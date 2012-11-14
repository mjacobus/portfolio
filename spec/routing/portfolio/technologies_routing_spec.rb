require 'spec_helper'

describe Portfolio::TechnologiesController, "#routes" do
  it "routes to #index" do
    get("/portfolio/technologies").should route_to("portfolio/technologies#index")
  end
end