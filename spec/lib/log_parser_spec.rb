require_relative "../../lib/log_parser.rb"

describe '#execute' do
  it 'execute the methods to run the file' do
    log = LogParser.new('./spec/fixtures/game_test.log')
    log_parse = log.execute
    expect(log_parse). to eq('  0:00 ------------------------------------------------------------')
  end

  it 'not execute the methods if the file does not exists' do
    log = LogParser.new("outro_arquivo.log")
    log_parse = log.execute
    expect(log_parse).to be_falsey
  end
end
