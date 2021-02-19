
class Player
    attr_reader :name, :hp
    DEFAULT_HP = 60
    DEFAULT_ATTACK = 10
    def initialize(name = "Xerxes",hp = DEFAULT_HP)
        @name = name
        @hp = hp
    end

    def recieve_damage
      @hp -= DEFAULT_ATTACK
    end

end
