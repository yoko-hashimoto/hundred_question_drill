# 24. ファイル参照の抽出

require "./british_article"
array =  british_article.split(/\n/)
array.each do |line|
  result = line.match(/\[\[(?:ファイル|File):([^\|]+)\|.+/)
  if result 
    puts result[1]
  end
end