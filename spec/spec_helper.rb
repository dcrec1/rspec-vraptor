require 'lib/spec/vraptor.rb'

def mocked_http_session
  MockedHttpSession.new(nil, nil, nil)
end
