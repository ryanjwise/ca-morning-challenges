def print_menu(array)
  array.each_with_index do | movie, index |
    puts "#{index+1}. #{movie[:title]}"
  end
end

def get_selection(array)
  loop do
    print_menu(array)
    print "Enter your choice (1-#{array.length})"
    movie_number = gets.to_i
    if movie_number <= array.length
      return movie_number
    else
      puts "\n#{movie_number} is not a valid option, please try again\n"
    end
  end
end

def print_selection(movie)
  puts " "
  puts movie[:title]
  
  puts "Released: #{movie[:release_date]}"
  puts "Directed by: #{movie[:director]}"
    
  puts "Staring:"
  movie[:actors].each_index do | index |
    puts "#{movie[:actors][index]} as #{movie[:roles][index]}"
  end
  puts " "
end

movies = [
  {title: "A New Hope", release_date: 1977, director: "George Lucas", actors: ["Mark Hamil", "Harrison Ford", "Carrie Fisher"], roles: ["Luke Skywalker", "Han Solo", "Leia Organa"]},

  {title: "Back to the Future", release_date: 1985, director: "Robert Zemeckis", actors: ["Michael J. Fox", "Christopher Lloyd", "Lea Thompson" ], roles: ["Marty McFly", "Doc", "Lorraine Baines"]},
  
  {title: "The Matrix", release_date: 1999, director: "Lana & Lilly Wachowski", actors: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"], roles: ["Neo", "Morpheus", "Trinity"]}
]

movie_number = get_selection(movies)
print_selection(movies[movie_number-1])
puts 'Goodbye!'