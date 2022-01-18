require_relative "/home/atila/Development/challenge2-log-parser/lib/log_parser"


LogParser.new(ARGV).execute if $PROGRAM_NAME == __FILE__
