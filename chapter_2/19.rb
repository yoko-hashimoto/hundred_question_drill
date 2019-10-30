# 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる

# パターン1
separated_lines = []
File.foreach("hightemp.txt") do | line |
  separated_lines << line.split("\t")
end
# 値の初期値を0として空のハッシュを作成
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

# パターン3
first_cols_3 = []
File.foreach("hightemp.txt") {|line_3|
  first_cols_3  << line_3.split("\t").first
}
count_3 = first_cols_3.group_by(&:itself).transform_values(&:count)
count_3.sort_by {|k, v| v}.reverse.each do |first_col_3, times_3|
  puts "#{first_col_3} #{times_3}"
end


# パターンをメソッド化する場合
def pattern3
  words = []
  File.foreach("hightemp.txt") do |line|
    words << line.split("\t").first
  end
  word_count_list = words.group_by(&:itself).transform_values(&:count)
  word_count_list.sort_by {|word, count| count}.reverse
end

def show_result(word_counts)
  word_counts.each do |word, count|
    puts "#{word} #{count}"
  end
end

show_result(pattern3)