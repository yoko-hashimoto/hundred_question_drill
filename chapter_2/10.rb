# n_lines = File.open("hightemp.txt").read.count("\n")
# p n_lines

file = File.open("hightemp.txt", "r")
n_lines =file.read.count("\n")
p n_lines
file.close