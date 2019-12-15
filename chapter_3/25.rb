# 25. テンプレートの抽出

require "./british_article"

hash = {}
array =  british_article.split(/\n/)
array.each do |line|
  result = line.match(/\|([^\|]+)\s=\s(.+)/)
  if result 
    key = result[1]
    value = result[2]
    hash[key] = value
  end
end

pp hash