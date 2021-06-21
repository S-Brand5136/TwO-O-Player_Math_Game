class Questions

def initialize 
  @num_one = 0
  @num_two = 0
  @answer = 0
end

def gen_question
  random_num = Random.new

  @num_one = random_num.rand(20)
  @num_two = random_num.rand(20)

  @answer = @num_one + @num_two
end

def print_question
  "What is #{@num_one} + #{@num_two}?"
end

def check_answer(answer)
  answer == @answer
end

end