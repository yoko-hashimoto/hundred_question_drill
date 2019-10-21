# 17. １列目の文字列の異なり

first_col = []
File.foreach("hightemp.txt") do |line|
  first_col << line.split("\t").first
end
puts first_col.uniq.sort
