# require "pathname"
# require "json"
require "./british_article"

array =  british_article.split(/\n/)
array.each do |line_2|
  result = line_2.match(/\[\[Category:(.+?)(?:\|.+)?\]\]/)
  if result
    puts result[1]
  end
  
end