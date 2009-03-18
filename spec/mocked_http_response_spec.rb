require 'spec/spec_helper'

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
    url = "http://www.mouseoverstudio.com"
    @response.send_redirect url
    @response.should redirect_to(url)
  end
  
  it "should have a target" do
    url = "http://www.mouseoverstudio.com"
    @response.send_redirect url
    @response.target.should eql(url)
  end
  
  it "should receive a header" do
    name = "MyHeader"
    value = "afasegwe"
    @response.add_header name, value
    @response.headers[name].should eql(value)
  end
	
   it "should add a cookie" do
    name = "MyCookie"
    value = "afasegwe"
    cookie = MockedCookie.new(name,value)
    @response.add_cookie cookie
    @response.cookies[0].name.should eql(name)
  end

end
