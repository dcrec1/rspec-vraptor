class MockedHttpResponse
  include HttpServletResponse
  attr_accessor :status, :error
  
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
    @redirect = path
  end
  
  def destination
    @redirect
  end
  
end

module VRaptorMatchers
  class RedirectTo
    def initialize(path)
      @path = path
    end
    
    def matches?(target)
      @target = target
      @target.destination.eql? @path
    end
    
    def failure_message
      "expected response to redirect to #{@target.destination}, is redirecting to #{@path}"
    end
  end
  
  def redirect_to(expected)
    RedirectTo.new(expected)
  end
end
