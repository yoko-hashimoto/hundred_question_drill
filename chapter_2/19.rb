# 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる

# パターン1
separated_lines = []
File.foreach("hightemp.txt") do | line |
  separated_lines << line.split("\t")
end
# 初期値を0として空のハッシュを作成
count = Hash.new(0)
separated_lines.each do |row|
  # 取り出した各行の１列目の文字列をキー、キーに対する値(初期値0)に1ずつ足した物を組みにしてハッシュcountに追加
  count[row[0]] += 1
end
count.sort { |a, b| b[1] <=> a[1] }.each do |first_col, times|
  puts "#{first_col} #{times}"
end

# パターン2
lines =  File.readlines("hightemp.txt")
separated_lines_2 = lines.map {|line_2| line_2.split("\t")}
# p separated_lines_2.group_by {|row_2| row_2[0]}.map {|k, v| [k, v.count]}.to_h
count_2 = separated_lines_2.group_by {|row_2| row_2[0]}.transform_values(&:count)
count_2.sort_by {|k, v| v}.reverse.each do |first_col_2, times_2|
  puts "#{first_col_2} #{times_2}"
end