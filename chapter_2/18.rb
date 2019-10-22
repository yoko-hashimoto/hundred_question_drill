# 18. 各行を3コラム目の数値の降順にソート

# パターン1
lines = File.readlines("hightemp.txt")
separated_lines =  lines.map {|line| line.split("\t") }
puts separated_lines.sort { |a, b| a[2] <=> b[2] }.reverse.join("\t")

# パターン2
separated_lines_2 = []
File.foreach("hightemp.txt") do |line_2|
  separated_lines_2 << line_2.split("\t")
end
# puts separated_lines_2.sort { |a, b| b[2] <=> a[2] }.join("\t")
sorted_lines_2 = separated_lines_2.sort { |a, b| b[2] <=> a[2] }
sorted_lines_2.each do |row|
  puts row.join("\t")
end

# パターン3
lines_3 = File.readlines("hightemp.txt")
separated_lines_3 =  lines_3.map {|line_3| line_3.split("\t") }
puts separated_lines_3.sort_by { |cols| cols[2] }.reverse.join("\t")
