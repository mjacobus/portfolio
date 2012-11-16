class Portfolio::JobsController < ApplicationController
  respond_to :html
  
  def index
    @jobs = Job.all
  end

  def show
  end
end
