class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end
  def score
    @word = params[:word]
    @letters = params[:letters]
    if check_grid(@word.split, @letters.split) == true

    # check the params against the 3 criteria
    # cant be built out of original grid
    # valid according to grid but not an english word
    # valid according to grid and is an english word
    # generate results and display on page
  end
  def check_grid(word, letters)
    word.all? do |letter|
      word.count(letter) <= letters.count(letter)
    end
  end
  def check_dictionary
  end
end
