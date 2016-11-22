class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [:stone, :stone, :stone, :stone] }
    place_stones
  end

  def place_stones
    @cups[6], @cups[13] = [], []
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 14)
  end

  def make_move(start_pos, current_player_name)
    stone_count = cups[start_pos].length
    cups[start_pos] -= cups[start_pos]

    idx = 1
    while idx <= stone_count
      cups[idx + start_pos].concat([:stone]) unless idx + start_pos == 13
      idx += 1
    end

    # render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?

  end

  def winner

  end
end
