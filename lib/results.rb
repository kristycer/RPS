class Results 
    def declare(player1, computer)
    @winner = 'Player 1' if player1 == 'Rock' && computer == 'Scissors'
    @winner = "Player 1" if player1 == 'Scissors' && computer == 'Paper'
    @winner = "Player 1" if player1 == 'Paper' && computer == 'Rock'


    @winner = "Computer" if player1 == 'Rock' && player1 == 'Scissors'
    @winner = "Computer" if player1 == 'Scissors' && player1 == 'Paper'
    @winner = "Computer" if player1 == 'Paper' && player1 == 'Rock'

    @winner = "Draw" if player1 == 'Rock' && computer == 'Rock'
    @winner = "Draw" if player1 == 'Scissors' && computer == 'Scissors'
    @winner = "Draw" if player1 == 'Paper' && computer == 'Paper'
    @winner
    end 
end 