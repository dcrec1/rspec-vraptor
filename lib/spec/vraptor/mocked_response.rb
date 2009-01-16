class MockedResponse
  include HttpServletResponse
  attr_accessor :status
  
  def initialize
    @status = 200
  end
  
  def set_status(x)
    @status = x
  end
  
end
