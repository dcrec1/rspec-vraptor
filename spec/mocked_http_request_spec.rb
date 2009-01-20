require 'spec/spec_helper'

describe MockedHttpRequest do

  before :each do
    @session = mocked_http_request
  end

  it "should get 80 as the default server port" do
    @session.get_server_port.should eql(80)
  end
  
  it "should get localhost as default server name" do
    @session.get_server_name.should eql('localhost')
  end
  
  it "should get myapp context path" do
    @session.get_context_path.should eql('myapp')
  end
  
end
