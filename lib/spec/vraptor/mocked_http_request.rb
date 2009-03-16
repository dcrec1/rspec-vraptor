class MockedHttpRequest
  include HttpServletRequest
  attr_accessor :dispatcher, :session, :request_uri, :parameter_map, :headers, :attributes, :locale, :context_path, :cookies
  
  def initialize(session, uri, map, injection, headers, locale, cookies)
    @locale = locale
    @attributes = injection
    @headers = {'Host' => '72.14.205.100'}.merge! headers
    @context_path = "/sso"
    @session, @request_uri, @parameter_map = session, @context_path + uri, map
    @cookies = cookies
  end
  
  def get_request_dispatcher(x)
    @dispatcher = MockedRequestDispatcher.new(x)
    @dispatcher
  end
  
  def get_locale
    @locale
  end
  
  def get_attribute(x)
    @attributes[x]
  end
  
  def set_attribute(x, y)
    @attributes.merge!({x => y})
  end
  
  def get_context_path
    @context_path
  end
  
  def get_server_name
    'localhost'
  end
    
  def get_server_port
    8080
  end
  
  def get_parameter_map
    @parameter_map
  end
  
  def get_request_uri
    @request_uri
  end
  
  def get_session
    @session
  end
  
  def get_header(x)
    @headers[x]
  end
  
  def set_header(x, y)
    @headers.merge!({x => y})
  end
  
  def remove_attribute(x)
    @attributes.delete x
  end
  
  def get_protocol
     "HTTP/1.1"
  end
  
  def viewless?
    @dispatcher.nil?
  end

  def get_cookies
    @cookies
  end

end
