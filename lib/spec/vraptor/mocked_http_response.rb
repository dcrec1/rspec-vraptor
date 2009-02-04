class MockedHttpResponse
  include HttpServletResponse
  attr_accessor :status, :error, :target
  
  def initialize
    @status = 200
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
  
end
