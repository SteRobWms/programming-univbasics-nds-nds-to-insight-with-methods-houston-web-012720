$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_gross = 0
  movie_count = 0
  while movie_count < director_data[:movies].length do
    director_gross += director_data[:movies][movie_count][:worldwide_gross]
    movie_count += 1
  end
  director_gross
end

def director_name(nds, director_count)
  nds[director_count][:name]
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_count = 0
  while director_count < nds.length do
    result[director_name(nds, director_count)] = gross_for_director(director_count)
    director_count += 1
  end
  return result
end
