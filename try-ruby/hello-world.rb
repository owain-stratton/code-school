require 'ap' # Awesome_print gem to print formatted output in console

# String length
'Owain'.length

# String reverse
'Owain'.reverse

# Number reverse
40.to_s.reverse

# Array
tickets = [12, 47, 68, 83]
tickets.sort # Sort the array
tickets.max # Max value of array
tickets.min # Min value of array

ap tickets

# Finding a value in a String
poem = 'One man went to mow, went to mow a meadow'
ap poem

poem['mow'] = 'plough'
ap poem

poem.reverse
ap poem

# Chained methods and converting strings to arrays
newPoem = "When you walk through a storm,\
Hold your head up high,\
And don't be afraid of the storm,\
Walk on!\
Walk on!\
With hope in your heart,\
And you'll never walk alone!"

ap newPoem.lines.to_a
ap newPoem.lines.to_a.reverse.join
ap newPoem.include? 'walk alone' # Does the new poem include the phrase walk on?
ap newPoem.downcase # Makes all characters lower case

# Hashes or also known as a Dictionary
books = {}
books['Count of Monte Cristo'] = :splendid
books['The road'] = :quite_good
books['Lance Armstrong: Biography'] = :mediocre
books['God is not great'] = :quite_not_good
books['Zlatan Ibrahimovic: Biography'] = :abysmal

ap books
ap books.length

# Create a new Hash with the new keyword with no data
ratings = Hash.new(0)
ap ratings

# Convert unique values in books into keys within the new ratings Hash using a Block (inside the curly braces)
books.values.each { |rate| ratings[rate] += 1 }
ap ratings

# Print to the console iteratively 5 times the string within the Block
5.times { ap 'Odelay!' }

# Find files in a directory
rubyFiles = Dir['try-ruby/*.rb']
ap rubyFiles

# Copy files and move them
# FileUtils.cp('try-ruby/hello-world.rb', 'try-ruby/Copy/hello-world-cp.rb')

# Check time file was modified
ap File.mtime('try-ruby/hello-world.rb').hour
