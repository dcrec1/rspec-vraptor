class MockedCookie < Cookie
  attr_accessor :name, :value, :path, :max_age
  
  def initialize(name, value)
 	@name = name
	@value = value
  end
  
  def get_name
    @name
  end
     
  def get_path
    @path
  end  
  
  def get_value
    @value
  end
  
  def set_path path
    @path = path
  end

  def set_value value
    @value = value
  end

  def set_max_age max_age
    @max_age = max_age
  end

end
