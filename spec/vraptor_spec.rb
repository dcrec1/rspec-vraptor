require 'spec/spec_helper'

describe "VRaptor" do

  context "should request an action" do
  
    before :each do
      $init = true
      $filter = mock(filter)
      $filter.should_receive(:do_filter)
    end

    it "given a map" do
      get "x/y", :request => {}, :inject => {}, :session => {}, :headers => {'a' => 'b'}
    end
    
    it "without a given map" do
      get "x/y"
    end
    
  end

  it "should init the filter" do
    my_filter = mock(filter)
    filter.stub!(:new).and_return(my_filter)
    my_filter.should_receive(:init)
    init
  end
  
end

def filter
  ($VRAPTOR_VERSION.eql?("Sexy") ? VRaptorFilter : VRaptor)
end
