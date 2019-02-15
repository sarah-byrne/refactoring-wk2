require_relative 'board'
require_relative 'player'

class Game
    def initialize
        @player1 = Player.new("player1", 1)
        @player2 = Player.new("player2", 1)
        @board = Board.new
    end

    def play(name, nb_of_steps)
        current_player(name)
        move(nb_of_steps)
        move_result
    end

    private

    def move(nb_of_steps)
      landing_position = @current_player.position
      landing_position += nb_of_steps
      snake_or_ladder?(landing_position)
      @current_player.change_position(@board.end_position(landing_position))
    end

    def current_player(name)
      fail 'Invalid player' if @player1.name != name && @player2.name != name

      @current_player = @player1.name == name ? @player1 : @player2
    end

    def move_result
      puts @board.finish?(@current_player.position) ?
        "#{@current_player.name} wins!" :
        "#{@current_player.name}: #{@current_player.position}"
    end

    def snake_or_ladder?(position)
      if @board.snake?(position)
          puts "#{@current_player.name} fell on a snake :("
      elsif @board.ladder?(position)
          puts "#{@current_player.name} fell on a ladder :)"
      end
    end
end
# feature test
g = Game.new
g.play('player1', 4)
g.play('player2', 6)
g.play('player1', 2)
g.play('player2', 1)
g.play('player1', 4)
g.play('player2', 6)
g.play('player1', 3)
g.play('player2', 5)
g.play('player1', 4)
g.play('player2', 6)
g.play('player1', 2)
g.play('player2', 1)

# Future user stories to think about while refactoring:
#  - I want be be able to play with different boards
#  - I'd like to be able to have custom player names
