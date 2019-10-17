lines = File.readlines("hightemp.txt", chomp: true)
# p lines
n = (ARGV[0].to_i)
puts lines[-n..-1]