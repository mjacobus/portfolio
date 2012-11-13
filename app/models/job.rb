class Job < ActiveRecord::Base
  attr_accessible :company, :company_website, :description, :title, :url
  
  validates :url, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :title, presence: true
end
