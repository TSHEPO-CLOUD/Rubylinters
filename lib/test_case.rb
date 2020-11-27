class Test
  attr_reader :content, :file_name

  def initialize(file_name)
    @file_name = file_name
    @content = nil
  end

  def read_file
    current_path = Dir.pwd
    file_path = current_path + "/tester/#{@file_name}"

    if File.exist?(file_path)
      lint_file = File.new(file_path, 'r')
      @content = lint_file.readlines
      lint_file.close
      @content
    else
      abort 'File not found'
    end
  end
end
