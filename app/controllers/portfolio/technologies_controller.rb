class Portfolio::TechnologiesController < ApplicationController
  respond_to :html
  
  def index
    @technologies = Technology.order(:started_at)
    respond_with(@technologies)
  end
end
