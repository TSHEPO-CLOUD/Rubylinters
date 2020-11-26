class Test
 attr_accesor :content, :file_name

 def initialize(file_name)
   @file_name = file_name
   @content = nil
 end

 def read_file
   current_path = Dir.pwd
   file_path = current_path + "/file to be tested/#{@file_name}"
  end

end