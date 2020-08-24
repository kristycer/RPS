class Computer 
    def move
        step = rand(1..3)
        @move = 'Rock' if step = 1
        @move = 'Paper' if step = 2
        @move = 'Scissors' if step = 3
        @move
    end 
end


