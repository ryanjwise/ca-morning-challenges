require_relative 'inventor.rb'

# Don't edit this array, but feel free to use it to test your solutions.
INVENTORS = [
  Inventor.new('Albert', 'Einstein', 1879, 1955),
  Inventor.new('Isaac', 'Newton', 1643, 1727),
  Inventor.new('Galileo', 'Galilei', 1564, 1642),
  Inventor.new('Marie', 'Curie', 1867, 1934),
  Inventor.new('Johannes', 'Kepler', 1571, 1630),
  Inventor.new('Nicolaus', 'Copernicus', 1473, 1543),
  Inventor.new('Max', 'Planck', 1858,  1947),
  Inventor.new('Katherine', 'Blodgett', 1898, 1979),
  Inventor.new('Ada', 'Lovelace', 1815, 1852),
  Inventor.new('Sarah E.', 'Goode', 1855, 1905),
  Inventor.new('Lise', 'Meitner', 1878, 1968),
  Inventor.new('Hanna', 'Hammarström', 1829, 1909)
].freeze

def first_and_last_name(inventors)
	# return a new array that contains the inventors first and last names as a string
  inventors.map { |inventor| "#{inventor.first} #{inventor.last}" }
end

def born_before_1800(inventors)
	# return an array of Inventors who were born before 1800
  inventors.select { |inventor| inventor.born < 1800}

end

def total_age(inventors)
  inventors.inject(0) { | sum, inventor | sum + (inventor.passed - inventor.born)}
end

def long_names(inventors)
	# return an array of Inventors who have a first name of 5 or more letters
  inventors.select { | inventor | inventor.first.length > 5 }
end

def last_name_sort(inventors)
	# return a new array sorted by the Inventors last name
  inventors.sort { | a, b | a.last <=> b.last}
end

def find_galilei(sorted_inventors)	 
	# using the sorted array from `last_name_sort`, find the index of `Galileo Galilei`
  sorted_inventors.index { | inventor | inventor.last.downcase == "galilei"}
  #downcase.index("galilei")
end
