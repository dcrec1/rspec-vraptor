class MockedHttpResponse
  include HttpServletResponse
  attr_accessor :status, :error, :target, :headers
  
  def initialize
    @status = 200
    @headers = {}
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
  
end
