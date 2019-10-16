lines = File.readlines("hightemp.txt")
p lines
n = (ARGV[0].to_i) -1
puts lines[0..n]

# open("hightemp.txt") {|file|
#   puts file.readlines[0..n]
# }