# 18. 各行を3コラム目の数値の降順にソート

# 1パターン目
lines = File.readlines("hightemp.txt")
separated_lines =  lines.map {|line| line.split("\t") }
puts separated_lines.sort { |a, b| a[2] <=> b[2] }.reverse.join("\t")

# 2パターン目
separated_lines_2 = []
File.foreach("hightemp.txt") do |line_2|
  separated_lines_2 << line_2.split("\t")
end
puts separated_lines_2.sort { |a, b| b[2] <=> a[2] }.join("\t")