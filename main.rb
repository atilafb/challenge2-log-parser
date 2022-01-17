class Main
    def initialize(args)
      if args.first.nil?
        @file_name = "games.log"
      else
        @file_name = args.first
      end
    end
  
    def open_file
        file = File.open(@file_name)
        file_data = file.readlines.map(&:chomp)
        
        puts file_data.first
        file.close
    end
  end
  
  Main.new(ARGV).open_file if $PROGRAM_NAME == __FILE__
