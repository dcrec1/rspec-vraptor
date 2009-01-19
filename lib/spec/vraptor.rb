require 'environment'

def get(x, params_request = {}, params_session = {}, injection = {}, headers = {})
  init
  @response = MockedResponse.new
  dispatcher = MockedRequestDispatcher.new
  @session = MockedHttpSession.new($context, params_session, @session_id)
  @request = MockedRequest.new(dispatcher, @session, x, Rhyme.translate(params_request), injection, headers, Locale.new('en', 'US'))
  
  $filter.do_filter(@request, @response, $chain)
end

def init
  if !$init    
    $context = MockedServletContext.new
    
    $config = MockedFilterConfig.new($context)
    
    $filter = VRaptorFilter.new
    $filter.init($config)
    
    $chain = mock(FilterChain)
    
    $init = true
  end
  
end

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

class VRaptorMock
  attr_writer :initialized
  def self.init
    initialized = true
  end
end
