class MockedHttpRequest
  include HttpServletRequest
  attr_accessor :dispatcher, :session, :request_uri, :parameter_map, :headers, :attributes, :locale
  
  def initialize(dispatcher, session, uri, map, injection, headers, locale)
    @locale = locale
    @attributes = injection
    @headers = {'Host' => '72.14.205.100'}.merge! headers
    @dispatcher, @session, @request_uri, @parameter_map = MockedRequestDispatcher.new, session, uri, map
  end
  
  def get_request_dispatcher(x)
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
    ""
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
end
