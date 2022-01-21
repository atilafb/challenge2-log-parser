require 'json'

class LogParser
  def initialize(file_path = "games.log")
    @file_name = file_path
  end

  def execute
    begin   
      file = File.open(@file_name)
      process_file(file)
    rescue
      puts 'File does not exists'
      nil
    ensure
      file.close unless file.nil?
    end    
  end

private
  def process_file(file)
    count_lines = File.read(file).each_line.count
    obj = {"lines": count_lines}
    json = JSON.pretty_generate(obj)
    response = "\"#{@file_name}\": #{json}"
    puts response
    response
  end
end
