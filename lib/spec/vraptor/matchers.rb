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
  
  class Render
    def initialize(target)
      @target = "/#{target}"
    end
    
    def matches?(request)
      @dispatcher = request.dispatcher
      @dispatcher.target.eql? @target
    end
    
    def failure_message
      "expected response to redirect to #{@dispatcher.target}, is redirecting to #{@target}"
    end
  end
  
  def redirect_to(expected)
    RedirectTo.new(expected)
  end
  
  def render(expected)
    Render.new(expected)
  end
end
