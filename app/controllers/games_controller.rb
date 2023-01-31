require 'open-uri'

class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)

  def new
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    return @letters.shuffle!
  end

  def score
  end
end

# how to generate an array from random letters?
# we require OpenUri to read
# https://ruby-doc.org/stdlib-1.9.3/libdoc/open-uri/rdoc/OpenURI.html
# Usually, unless you feel you need a lower level interface, using OpenURI is better as you can get by with less code.
# Using OpenURI you can open a URL/URI and treat it as a file.

# primero creamos un array usamos la forma de escribir "%w", la cual nos permite:
# a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# creamos asi el array VOWELS = %w(A E I O U Y)

# how to return an array of 5 random letters in ruby?
