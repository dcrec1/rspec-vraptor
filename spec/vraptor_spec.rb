require 'spec/spec_helper'

describe "VRaptor" do

  context "should request an action" do
  
    before :each do
      $init = true
      $filter = mock(VRaptorFilter)
      $filter.should_receive(:do_filter)
    end

    it "given a map" do
      get "x/y", :request => {}, :inject => {}, :session => {}, :headers => {'a' => 'b'}
    end
    
    it "without a given map" do
      get "x/y"
    end
    
  end
  
end
