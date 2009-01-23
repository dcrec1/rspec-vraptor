class MockedHttpSession
  include HttpSession
  attr_accessor :attributes, :context, :id
  
  def get_id
    @id
  end
  
  def initialize(context, map, id)
    @context = context
    @attributes = map
    @id = id
  end
  
  def set_attribute(x, y)
    @attributes.merge!({x => y})
  end
  
  def get_attribute(x)
    @attributes[x]  
  end
  
  def get_servlet_context
    @context
  end
  
  def remove_attribute(key)
    @attributes.delete(key)
  end
  
end
