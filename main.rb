class Main
    def initialize(args)
      if args.first.nil?
        @file_name = "games.log"
      else
        @file_name = args.first
      end
    end
  
    def process_file (file)
        file_data = file.readlines.map(&:chomp)
        puts file_data.first
    end

    def validate
        begin
            file = File.open(@file_name)
            process_file(file)
        rescue
            puts 'File not exists.'
        ensure
            file.close unless file.nil?
        end         
    end

  end
  
  Main.new(ARGV).validate if $PROGRAM_NAME == __FILE__
