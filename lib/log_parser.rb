class LogParser
    def initialize(args)
      if args.first.nil?
        @file_name = "games.log"
      else
        @file_name = args.first
      end
    end

    def execute
      process_file(validate_file) unless validate_file.nil?
    end
  
    def process_file (file)
        file_data = file.readlines.map(&:chomp)
        puts file_data.first
        file.close
        file_data.first
    end

    def validate_file
        begin
            file = File.open(@file_name)
            file
        rescue
            puts 'File does not exists'
            nil
        ensure
            
        end         
    end
  end