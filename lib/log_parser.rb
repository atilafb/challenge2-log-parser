class LogParser
    def initialize(file_path = "games.log")
      @file_name = file_path
    end

    def execute
      process = process_file(validate_file) unless validate_file.nil?
      process
    end

private
    def process_file (file)
        file_data = file.readline.chomp
        puts file_data
        file.close
        file_data
    end

    def validate_file
        begin
            file = File.open(@file_name)
            file
        rescue
            puts 'File does not exists'
            nil 
        end         
    end
  end
