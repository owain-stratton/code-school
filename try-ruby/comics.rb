require 'popup'

# Go to a webpage
Popup.goto 'http://google.com'

# Makes a link and creates HTML
Popup.make {
  h1 "My Links"
  link "Go to Bing", "http://bing.com"
}

# Make some more HTML
Popup.make do
  h1 "Things To Do"
  list do
    p "Try out Ruby"
    p "Ride a tiger"
    p "(down River Euphrates)"
  end
end

# comics = {}
#   File.foreach(path) do |line|
#     name, url = line.split(': ')
#     comics[name] = url.strip
#   end
# end

# Popup.make do
#   h1 "Comics on the Web"
#   list do
#     comics.each do |name, url|
#       link name, url
#     end
#   end
# end
