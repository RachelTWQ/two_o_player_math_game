class Player
    attr_accessor :life, :name
    def initialize(name)
        @life = 3
        @name = name
    end

    def reduce
        @life -= 1
    end
end