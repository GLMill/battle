class Player
    attr_reader :name
    attr_accessor :hitpoints

    START_HITPOINTS = 100

    def initialize(name)
        @name = name
        @hitpoints = START_HITPOINTS
    end
end