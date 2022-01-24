require_relative "../../lib/log_parser.rb"

describe LogParser do
  describe '#first_line' do
    it 'read the first line of the file' do
      log = LogParser.new('./spec/fixtures/game_test.log')
      log_parse = log.first_line
      expect(log_parse).to eq('  0:00 ------------------------------------------------------------')
    end
  end

  describe '#count_lines' do
    it 'count the lines of the file' do
      log = LogParser.new('./spec/fixtures/game_test.log')
      log_parse = log.count_lines
      expect(log_parse).to be(10)
    end
  end

  describe '#process_file' do
    it 'process the file if return the JSON with the path and the lines' do
      mock_path = './spec/fixtures/game_test.log'
      log = LogParser.new(mock_path)
      log_parse = log.process_file
      expect(log_parse).to eq("\"#{mock_path}\": {\n  \"lines\": 10\n}")
    end
  end
end
