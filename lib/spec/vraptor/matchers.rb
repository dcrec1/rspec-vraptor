module VRaptorMatchers
  class RedirectTo
    def initialize(path)
      @path = path
    end
    
    def matches?(response)
      @response = response
      @response.destination.eql? @path
    end
    
    def failure_message
      "expected response to redirect to #{@path}, is redirecting to #{@response.destination}"
    end
  end
  
  def redirect_to(expected)
    RedirectTo.new(expected)
  end
  
  class Render
    def initialize(target)
      @target = "/#{target}"
    end
    
    def matches?(request)
      @dispatcher = request.dispatcher
      @dispatcher.target.eql? @target
    end
    
    def failure_message
      "expected request to render #{@target}, is rendering #{@dispatcher.target}"
    end
  end
  
  def redirect_to(expected)
    RedirectTo.new(expected)
  end
  
  def render(expected)
    Render.new(expected)
  end
end
