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
  
end