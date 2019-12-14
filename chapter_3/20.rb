#  require 'pathname'
#  require 'json'

#  path = Pathname("jawiki-country.json")

# File.foreach(path) { |line|
#   hash = JSON.parse(line)
#     if hash["title"] == "イギリス"
#       hash["text"].display
#       break
#     end
# }

require "./british_article"

puts british_article
