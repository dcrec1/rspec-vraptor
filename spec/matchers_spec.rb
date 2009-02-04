require 'spec/spec_helper'

describe VRaptorMatchers::RedirectTo do
  before :all do
    @url = "mouseoverstudio.com"
    @redirect = VRaptorMatchers::RedirectTo.new(@url)
  end
  
  it "should match a redirection" do
    response = MockedHttpResponse.new
    response.send_redirect @url
    @redirect.matches?(response).should be_true
  end
  
  it "should have a failure message" do
    @redirect.failure_message.should_not be_nil
  end
end

describe VRaptorMatchers::Render do
  before :all do
    @url = "mouseoverstudio.com"
    @matcher = VRaptorMatchers::Render.new(@url)
  end
  
  it "should match a dispatcher target" do
    request = mocked_http_request
    request.dispatcher = MockedRequestDispatcher.new("/#{@url}")
    @matcher.matches?(request).should be_true
  end
  
  it "should have a failure message" do
    @matcher.failure_message.should_not be_nil
  end
end
