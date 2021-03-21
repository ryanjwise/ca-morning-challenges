def print_menu
  puts '1. A New Hope'
  puts '2. Back to the Future'
  puts '3. The Matrix'
end

def get_selection(array)
  loop do
    print_menu
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
  puts "#{movie[:actor1]} as #{movie[:role1]}"
  puts "#{movie[:actor2]} as #{movie[:role2]}"
  puts "#{movie[:actor3]} as #{movie[:role3]}"
  puts " "
  
  # puts "Staring:"
  # movie[:actors].each do | index |
  #   puts "#{movie[:actors][index]} as #{movie[:roles][index]}"
  # end
  # puts " "
end

movies = [
  {title: "A New Hope", release_date: 1977, director: "George Lucas", actor1: "Mark Hamil", actor2: "Harrison Ford",actor3: "Carrie Fisher", role1: "Luke Skywalker", role2: "Han Solo",role3: "Leia Organa"},
  
  {title: "Back to the Future", release_date: 1985, director: "Robert Zemeckis", actor1: "Michael J. Fox", actor2: "Christopher Lloyd",actor3: "Lea Thompson", role1: "Marty McFly", role2: "Doc",role3: "Lorraine Baines"},
  
  {title: "The Matrix", release_date: 1999, director: "Lana & Lilly Wachowski", actor1: "Keanu Reeves", actor2: "Laurence Fishburne",actor3: "Carrie-Anne Moss", role1: "Neo", role2: "Morpheus",role3: "Trinity"},
  
  # {title: "The Matrix", release_date: 1999, director: "Lana & Lilly Wachowski", actors: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"], roles: ["Neo", "Morpheus", "Trinity"]}
]

movie_number = get_selection(movies)
print_selection(movies[movie_number-1])

puts 'Goodbye!'