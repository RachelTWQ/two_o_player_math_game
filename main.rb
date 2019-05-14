require './player'
require './question'

class Game
    attr_reader :p1, :p2
    attr_accessor :current_player
    def initialize
        @p1 = Player.new("player 1")
        @p2 = Player.new("player 2")
        @current_player = @p1
        @game_on = true
    end

    def game
        while @game_on
            puts "--- NEW TURN ---"
            current_question= Question.new
            current_question.ask_question(@current_player)
            puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"
            if @current_player.life <= 0
                @game_on = false
                puts "--- GAME OVER ---"
            end

            if @current_player.name == "player 1"
                @current_player = @p2
            else
                @current_player = @p1
            end
        end
    end
end

play_game = Game.new
play_game.game

