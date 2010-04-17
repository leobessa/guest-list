require File.dirname(__FILE__) + '/../spec_helper'

describe Guest do
  it "should be valid" do
    Guest.new.should be_valid
  end
end
