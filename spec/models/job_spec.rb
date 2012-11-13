require 'spec_helper'

describe Job do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:url) }
  
  it { should validate_uniqueness_of(:url).case_insensitive }

end
