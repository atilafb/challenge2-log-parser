require_relative "../../lib/log_parser.rb"

describe '#validate_file' do
  it 'validate the method if return the JSON with the path and the lines' do
    mock_path = './spec/fixtures/game_test.log'
    log = LogParser.new(mock_path)
    log_parse = log.validate_file
    expect(log_parse).to eq("\"#{mock_path}\": {\n  \"lines\": 10\n}")
  end
end
