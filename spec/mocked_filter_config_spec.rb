require 'spec/spec_helper'

describe MockedFilterConfig do

  before :each do
    context = mock(MockedServletContext)
    @config = MockedFilterConfig.new(context)
  end

  it "should give me a init parameter" do
    @config.get_init_parameter("asfas")
  end


end
