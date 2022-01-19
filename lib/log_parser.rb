class LogParser
  def initialize(file_path = "games.log")
    @file_name = file_path
  end

  def validate_file
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
    file_data = file.readline.chomp
    puts file_data
    file_data
  end
end
