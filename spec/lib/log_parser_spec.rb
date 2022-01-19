require_relative "../../lib/log_parser.rb"

describe '#execute' do
    it 'execute the methods to run the file' do
        log = LogParser.new('games.log')
        log_parse = log.execute
        expect(log_parse). to eq('  0:00 ------------------------------------------------------------')
    end

    it 'not execute the methods if the file does not exists' do
        log = LogParser.new("outro_arquivo.log")
        log_parse = log.execute
        expect(log_parse). to be_falsey
    end
end

#describe '#validate_file' do
#    it 'validate if the file exists' do
#        log = LogParser.new(['games.log'])
#        log_parse = log.validate_file
#        expect(log_parse).to be_truthy
#    end
#
#    it 'validate if the file does not exists' do
#        log = LogParser.new(['outro_arquivo.log'])
#        log_parse = log.validate_file
#        expect(log_parse).to be_falsey
#    end
#end

#describe '#process_file' do
#    it 'validate if return the first line of the file' do
#        log = LogParser.new(['games.log'])
#        mock_file = File.open('games.log')
#        log_parse = log.process_file(mock_file)
#        expect(log_parse).to eql('  0:00 ------------------------------------------------------------')
#    end
#
#    it 'validate if not return the first line of the file' do
#        log = LogParser.new(['./spec/fixtures/game_test.log'])
#        mock_file = File.open('./spec/fixtures/game_test.log')
#        log_parse = log.process_file(mock_file)
#        expect(log_parse).not_to eql('  0:00 ------------------------------------------------------------')
#    end
#end