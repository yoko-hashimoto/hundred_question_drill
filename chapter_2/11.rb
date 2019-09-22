file = File.open("hightemp.txt", "r")
# puts file.read
replaced_content = file.read.gsub(/\t/, " ")
puts replaced_content
file.close