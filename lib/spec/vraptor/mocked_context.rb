class MockedContext
  include ServletContext
  attr_accessor :attributes, :init_parameters, :basic_path
  
  def initialize
    @attributes = {}
    @basic_path = java.io.File.new("").get_absolute_path
  end
  
  def get_init_parameter(x)
    nil
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
    if path.eql? "/WEB-INF/classes/"
      path = "target/classes/"
    else
      path = path.sub("/WEB-INF/classes/", "")
    end
    root_folder = java.io.File.new(java.io.File.new(@basic_path), path)
    paths = HashSet.new
    root_folder.list.each do |file_name|
      if java.io.File.new(root_folder, file_name).is_directory
        file_name = file_name + '/'
      end
      name = path + file_name
      if name.include? ".class"
        name = name.sub("target", "/WEB-INF")
      end
      paths.add(name)
    end
    paths
  end
  
  def get_real_path(x)
    if !x.include? ".class"
      java.io.File.new("").get_absolute_path + "/" + x
    else
      x
    end
  end
  
  def set_attribute(x, y)
    @attributes.merge!({x => y})
  end
  
  def get_attribute(x)
    @attributes[x]
  end
end
