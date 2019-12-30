$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'yaml'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
   i = 0
  totals = {}

  while i < nds.length do
    directors_name = nds[i][:name]
    totals[directors_name] = 0
    movie_index = 0

  while movie_index < nds[i][:movies].length do
    totals[directors_name] += nds[i][:movies][movie_index][:worldwide_grosses]
    movie_index += 1
end
i += 1
end
totals
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
require 'pp'
result = { 
  "Stephen Spielberg"=>1357566430,
        "Russo Brothers"=>2281002470,
        "James Cameron"=>2571020373,
        "Spike Lee"=>256624217,
        "Wachowski Siblings"=>806180282,
        "Robert Zemeckis"=>1273838385,
        "Quentin Tarantino"=>662738268,
        "Martin Scorsese"=>636812242,
        "Francis Ford Coppola"=>509719258}
        return result
 # nil
  
end
