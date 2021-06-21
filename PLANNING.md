# Classes

## Player ( Used to represent the player in game. )

attr_accessor :lives
attr_reader :name

- variables

  - name ( string ) (name of player)
  - lives ( int ) (amount of lives the player has)

- behavior
  to_s (method override)

  ```Ruby
    Class Player

      attr_accessor :lives
      attr_reader :name

      def initialize (name)
        @name = name
        @lives = 3
      end

      def to_s
        "#{@name}: #{@lives}/3"
      end

    end
  ```

---

## Questions ( The questions that will be asked at the start of a new round)

- private

  - attr_accessor :num1 :num2 :answer

- variables
  num1
  num2
  answer

- behavior

  - gen question - ( Creates a new question )

  ```Ruby
    Class Questions

      def gen_question
        # stuff
      end

    end
  ```

  gen random numbers

  ```Ruby
    random_num = Random.new
    random_num.rand(20)
  ```

---

## Game - (Used to start new games)

- variables

  - winner( hash ) - hash of the winner
  - game_start(boolean)
  - players ( array ) - ( Array of hashes with each player )
  - current_player ( hash )

- behavior

  - start_game - ( creates two new players, starts a new game, is a loop with game_start condition )
  - new_turn - ( starts a new turn each round )
  - create_player - ( creates a new player and adds it to the @players array )
  - print_scores - ( prints score at end of turn )
  - get_new_question - ( gets a new question from Questions class )
  - end_game - ( sets game_start to false )
  - print_winner - ( prints out game winner info )

```Ruby
  Class Game

    def initialize
      @winner = {}
      @game_start = false
      @players = []
    end

  end
```
