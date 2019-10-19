# 16. ファイルをN分割する
input_lines = File.readlines("hightemp.txt", chomp: true)
# 分割する際に割り切れなかった場合を考慮し、to_f でFloatオブジェクトに変換
n = ARGV[0].to_f
# 出力したい行数が割り切れなかった場合は ceil により切り上げ
line_number = (input_lines.length / n).ceil
# each_sliceにより指定した行数ずつの配列にする
separated_lines = input_lines.each_slice(line_number)
separated_lines.each.with_index do |lines, i|

  File.write("out_out_file_#{i + 1}.txt", lines.join("\n"))
end