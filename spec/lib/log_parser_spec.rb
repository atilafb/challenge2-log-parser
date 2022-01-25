require_relative "../../lib/log_parser.rb"

describe LogParser do
  describe '#execute' do
    it 'execute the method if return the JSON with the path and the lines' do
      mock_path = './spec/fixtures/game_test.log'
      log = LogParser.new(mock_path)
      log_parse = log.execute
      expect(log_parse).to eq("\"#{mock_path}\": {\n  \"lines\": 10\n}")
    end
  end
end
