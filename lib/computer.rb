class Computer 
    def move
        rand_step = rand(1..3)
        @move = 'Rock' if rand_step = 1
        @move = 'Paper' if rand_step = 2
        @move = 'Scissors' if rand_step = 3
        @move
    end 
end


