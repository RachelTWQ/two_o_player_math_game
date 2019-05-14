class Question

    def initialize
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @result = @num1 + @num2
    end

    def ask_question(current_player)
        puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
        print ">"
        answer = $stdin.gets.chomp.to_i
        if @result != answer
            puts "#{current_player.name}: Seriously? No!"
            current_player.reduce
        else
            puts "YES! You are correct"
        end
    end
end