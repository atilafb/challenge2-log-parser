require_relative "./lib/log_parser.rb"

log_parse = LogParser.new
log_parse.first_line
log_parse.count_lines
log_parse.process_file
