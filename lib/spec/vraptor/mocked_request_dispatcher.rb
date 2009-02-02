class MockedRequestDispatcher
  include RequestDispatcher
  
  attr_reader :request, :target
  
  def initialize(target)
    @target = target
  end
  
  def forward(request, response)
    @request = request
  end
end
