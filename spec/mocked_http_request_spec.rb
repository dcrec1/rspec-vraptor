require 'spec/spec_helper'

describe MockedHttpRequest do

  before :each do
    @session = mocked_http_request
  end

  it "should get 8080 as the default server port" do
    @session.get_server_port.should eql(8080)
  end
  
  it "should get localhost as default server name" do
    @session.get_server_name.should eql('localhost')
  end
  
  it "should get the context path" do
    @session.get_context_path.should eql('')
  end
  
end
