require 'spec/spec_helper'

describe MockedServletContext do

  before :each do
    @context = MockedServletContext.new
  end

  it "should give me a path" do
    @context.get_resource("cwfwe")
  end

end
