require 'json'

class LogParser
  def initialize(file_path = 'games.log')
    @file_name = file_path
    raise 'File not exist' unless File.exist? @file_name
  end

  def first_line
    file = File.open(@file_name)
    file_data = file.readline.chomp
    file.close
    file_data
  end

  def count_lines
    file = File.open(@file_name)
    lines = File.read(file).each_line.count
    file.close
    lines
  end

  def find_players
    players = []
    file = File.open(@file_name)
    file.each do |line|
      if line.include?('Kill')
        player = get_player_from_line(line, 'killed ', ' by')
        players.push(player) unless players.include?(player)
      elsif line.include?('ClientUserinfoChanged')
        player = get_player_from_line(line, ' n\\', '\\t')
        players.push(player) unless players.include?(player)
      end
    end
    file.close
    players
  end

  def get_player_from_line(line, separator1, separator2)
    separator1_line = line.split(separator1, -1)
    line_separated = separator1_line[1]
    separator2_line = line_separated.split(separator2, -1)
    separator2_line[0]
  end

  def process_file
    obj = { "lines": count_lines, "players": find_players}
    json = JSON.pretty_generate(obj)
    "\"#{@file_name}\": #{json}"
  end
end

