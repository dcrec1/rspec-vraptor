require 'spec/spec_helper'

describe MockedRequestDispatcher do

  before :each do
    @host = "mouseoverstudio.com"
    @target = "/#{@host}"
    @dispatcher = MockedRequestDispatcher.new(@target)
  end

  it "should keep forwarded request" do
    my_request = mock(MockedHttpRequest)
    @dispatcher.forward(my_request, nil)
    @dispatcher.request.should eql(my_request)
  end
  
  it "should keep a target specified on initialization" do
    @dispatcher.target.should eql(@target)
  end
  
end
