require 'spec/spec_helper'

describe MockedCookie do

  before :each do
    @name = 'SESSIONID'	
    @value = '123456'
    @path = '/xpto'	    
    @cookie = MockedCookie.new(@name,@value)
  end

  it "should set the path" do	  
    @cookie.set_path @path
    @cookie.path.should eql(@path)
  end
	
  it "should set the MaxAge" do	 
    max_age = 100	  
    @cookie.set_max_age max_age
    @cookie.max_age.should eql(max_age)
  end

  it "should set the value" do
     new_value = '654321'
     @cookie.set_value new_value
     @cookie.value.should eql(new_value)
  end

  it "should get the name" do
     @cookie.get_name.should eql(@name)
  end

  it "should get the value" do
     @cookie.get_value.should eql(@value)
  end

  it "should get the path" do
     @cookie.path = @path	  
     @cookie.get_path.should eql(@path)
  end

end
