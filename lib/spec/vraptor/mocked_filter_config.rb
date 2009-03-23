class MockedFilterConfig
  include FilterConfig
  
  attr_accessor :context
  
  def initialize(context)
    @context = context
  end
  
  def get_servlet_context
    @context
  end

  def get_init_parameter(x)
  end
end
