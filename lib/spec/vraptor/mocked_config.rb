class MockedFilterConfig
  include FilterConfig
  
  attr_accessor :context
  
  def initialize(context)
    @context = context
  end
  
  def getServletContext
    @context
  end
end
