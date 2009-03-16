class MockedHttpResponse
  include HttpServletResponse
  attr_accessor :status, :error, :target, :headers, :cookies
  
  def initialize
    @status = 200
    @headers = {}
    @cookies = {}
  end
  
  def set_status(x)
    @status = x
  end
  
  def send_error(code, msg = '')
    @error = {:code => code, :msg => msg}
  end
  
  def send_redirect(path)
    @target = path
  end
  
  def destination
    @target
  end
  
  def add_header(name, value)
    @headers[name] = value
  end
  
  def add_cookie(name, value)
    @cookies[name] = value
  end

end
