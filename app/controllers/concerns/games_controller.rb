class GamesController < ApplicationController
  def new
    @letters = new_letters
  end

  def new_letters
    letters = []
    10.times do
      letters << Array('a'...'z').sample
    end
    return letters
  end

  def function_includes(letters, answer)
    letters_str = letters
    while answer.length.positive?
      last_letters_index = letters_arr.find_index(answer[-1])
      return false if last_letters_index.nil?
      letters_arr.delete_at(last_letters_index)
      answer = answer[0...-1]
    end
    true
  end

  def score
    @score = params[:answer]
    function_includes
  end
end
