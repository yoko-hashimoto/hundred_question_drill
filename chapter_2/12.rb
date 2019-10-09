file = File.open("hightemp.txt", "r")
file.each_line do |line|
  puts line
end
file.close

first_col =[]
second_col = []
File.foreach("hightemp.txt") do |line|
  first_col << line.split("\t").first
  second_col << line.split("\t")[1]
end
p first_col
p second_col
File.write("col1.txt", first_col.join("\n"))
File.write("col2.txt", second_col.join("\n"))