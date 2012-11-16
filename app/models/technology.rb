class Technology < ActiveRecord::Base
  attr_accessible :description, :name, :slug, :started_at, :website
end
