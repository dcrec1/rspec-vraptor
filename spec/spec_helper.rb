require 'lib/spec/vraptor.rb'

def mocked_http_session
  MockedHttpSession.new(nil, nil, nil)
end

def mocked_http_request
  MockedHttpRequest.new(nil, "/my/path", nil, nil, {}, nil)
end

def mocked_http_response
  MockedHttpResponse.new
end
