require 'spec/spec_helper'

describe MockedServletContext do

  before :each do
    @context = MockedServletContext.new
  end

  it "should give me a path" do
    lambda {@context.get_resource("cwfwe")}.should_not raise_error
  end

  it "should return resources with a / if they are a directory" do
    @context.get_resource_paths("spec/WEB-INF/classes/com").to_array[0].should eql("spec/WEB-INF/classes/com/")
  end

end
