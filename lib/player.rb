class Player
    attr_reader :name, :hp

    START_HP = 100

    def initialize(name)
        @name = name
        @hp = START_HP
    end

    def update_health(int)
        @hp -= int
    end

end