require 'json'

class LogParser
  def initialize(file_path = 'games.log')
    @file_name = file_path
    raise 'File not exist' unless File.exist? @file_name
  end

  def first_line
    file = File.open(@file_name)
    file_data = file.readline.chomp
    puts file_data
    file.close
    file_data
  end

  def count_lines
    file = File.open(@file_name)
    lines = File.read(file).each_line.count
    puts lines
    file.close
    lines
  end

  def process_file
    obj = { "lines": count_lines }
    json = JSON.pretty_generate(obj)
    response = "\"#{@file_name}\": #{json}"
    puts response
    response
  end
end
