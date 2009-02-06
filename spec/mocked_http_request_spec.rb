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
    @request.get_context_path.length.should > 0
  end
  
  it "should have a context path attribute" do
    @request.context_path.should eql(@request.get_context_path)
  end
  
  it "should keep the request dispatcher" do
    @request.get_request_dispatcher("xpto").should eql(@request.dispatcher)
  end
  
  it "should match a renderization" do
    file = "my/file.rb"
    @request.get_request_dispatcher("/#{file}").forward(nil, nil)
    @request.should render(file)
  end
  
  it "should add context path to request uri" do
    path = "/a/b/c"
    req = MockedHttpRequest.new(nil, path, nil, nil, {}, nil)
    req.request_uri.should eql(req.context_path + path)
  end

  it "should get HTTP/1.1 as the default protocol" do
    @request.get_protocol.should eql('HTTP/1.1')
  end
  
end
