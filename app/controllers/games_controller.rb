require 'open-uri'

class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)

  def new
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    return @letters.shuffle!
  end

  def score
    @letters = params[:letters].split
    @word = (params[:word] || "").upcase
    @included = included?(@word, @letters)
    @english_word = english_word?(@word)
  end
end

private

def included?(word, letters)
  word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
end

def english_word?(word)
  response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
  json = JSON.parse(response.read)
  json['found']
end

# how to generate an array from random letters?
# we require OpenUri to read
# https://ruby-doc.org/stdlib-1.9.3/libdoc/open-uri/rdoc/OpenURI.html
# Usually, unless you feel you need a lower level interface, using OpenURI is better as you can get by with less code.
# Using OpenURI you can open a URL/URI and treat it as a file.

# primero creamos un array usamos la forma de escribir "%w", la cual nos permite:
# a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
# creamos asi el array VOWELS = %w(A E I O U Y)

# vemos que los params son los parametros o atributos que estan dentro de nuestra web
# cuando hicimos el raise dentro del score vemos los siguientes elementos:
# letters"=>"Y I Y P X X L I I Z", "word"=>"", "controller"=>"games", "action"=>"score"
# de los cuales podemos tomar los parametros letters, el cual vamos a hacedr split para tener todas las letras comos string
# y los parametros word, el cual vamos a llamar y haremos upcase para que sea en mayuscula como las letras
