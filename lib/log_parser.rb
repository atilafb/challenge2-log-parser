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
    ensure
      file.close unless file.nil?
    end    
  end

private
  def process_file(file)
    count_lines = file.readlines.count
    obj = { "lines": count_lines }
    json = JSON.pretty_generate(obj)
    "\"#{@file_name}\": #{json}"
  end
end
