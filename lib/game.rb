class Game 
   attr_reader :player_1, :player_2, :opponent, :over

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
        @turn = @player_1
        @opponent = @player_2
        @over = false
    end

    def attack
        @opponent.update_health(10)
        game_over
  
    end

    def turn
        temp = @turn
        @turn = @opponent
        @opponent = temp
    end

    def game_over
        if @opponent.dead
            @over = true
        end
    end


end