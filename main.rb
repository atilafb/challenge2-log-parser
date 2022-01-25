require_relative "./lib/log_parser.rb"

class Main
  def initialize(log_parser)
    @log_parser = log_parser
  end

  def parser
    @log_parser.process_file
  end
end

log = LogParser.new
log_parse = Main.new(log)
puts log_parse.parser
