require 'spec/spec_helper'

describe MockedHttpRequest do

  before :each do
    @request = mocked_http_request
  end

  it "should get 8080 as the default server port" do
    @request.get_server_port.should eql(8080)
  end
  
  it "should get localhost as default server name" do
    @request.get_server_name.should eql('localhost')
  end
  
  it "should get the context path" do
    @request.get_context_path.should eql('')
  end
  
  it "should keep the request dispatcher" do
    @request.get_request_dispatcher("xpto").should eql(@request.dispatcher)
  end
  
end
