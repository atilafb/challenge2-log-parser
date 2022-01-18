require_relative "log_parser"

LogParser.new(ARGV).validate if $PROGRAM_NAME == __FILE__
