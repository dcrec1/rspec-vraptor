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

describe MockedHttpResponse do

  before :each do
    @response = mocked_http_response
  end

  it "should save an error received" do
    error = "Not Found"
    @response.send_error 404, error
    @response.error[:msg].should eql(error)
  end
  
  it "should save an error code received" do
    code = 303
    @response.send_error code
    @response.error[:code].should eql(code)
  end
  
  it "should redirect to an URL" do
    url = "http://wwwmouseoverstudio.com"
    @response.send_redirect url
    @response.should redirect_to(url)
  end
  
end
