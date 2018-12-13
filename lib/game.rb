class Game 
   attr_reader :player_1, :player_2, :opponent

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
        @turn = @player_1
        @opponent = @player_2
    end

    def attack
        @opponent.update_health(10)
    end

    def turn
        temp = @turn
        @turn = @opponent
        @opponent = temp
    end


end