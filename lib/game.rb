class Game 
   attr_reader :player_1, :player_2

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def attack(player_obj)
        player_obj.update_health(10)
    end


end