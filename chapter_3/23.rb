# 23. セクション構造

require "./british_article"
array =  british_article.split(/\n/)
array.each do |line|
  result = line.match(/(={2,4})(.+?)\1/)
  if result
    puts "#{result[2]} #{result[1].size-1}"
  end
end