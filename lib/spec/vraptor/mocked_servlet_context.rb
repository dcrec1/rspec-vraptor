class MockedServletContext
  include ServletContext
  attr_accessor :attributes, :init_parameters, :basic_path
  
  def initialize
    @attributes = {}
  end
  
  def get_init_parameter(x)
  end
  
  def get_context(uri_path)
    nil
  end
  
  def get_major_version
    0
  end
  
  def get_minor_version
    0
  end
  
  def get_mime_type(file)
    nil
  end
  
  def get_resource_paths(path)
    paths = HashSet.new  
    path = @basic_path = ($CLASSPATH.select {|p| p.include? "classes"})[0].sub("file:", "") if path.eql? "/WEB-INF/classes/"
    Dir[path + "*"].each do |path|
      path = path + "/" unless path.include? "."
      path = path.gsub(@basic_path, "/WEB-INF/classes/") if path.include? ".class"
      paths.add path
    end
    paths
  end

  def get_resource(x)
  end
  
  def get_real_path(path)
    path
  end
  
  def set_attribute(x, y)
    @attributes.merge!({x => y})
  end
  
  def get_attribute(x)
    @attributes[x]
  end
end
