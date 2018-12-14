class Player
    attr_reader :name, :hp, :dead

    START_HP = 100

    def initialize(name)
        @name = name
        @hp = START_HP
        @dead = false
    end

    def update_health(int)
        @hp -= int
        check_health
    end

    def check_health
        if @hp <= 0 
            @dead = true
        end
    end

end