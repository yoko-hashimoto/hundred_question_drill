# require 'pathname'
# require 'json'

# path = Pathname("jawiki-country.json")

# File.foreach(path) { |line|
#   # parseする事でハッシュ形式にする
#   hash = JSON.parse(line)
#   # paeseした後のキーはシンボルではなく文字列になる
#   array = hash["text"].split(/\n/)
#   array.each do |line_2|
#     if line_2.include?("[[Category:")
#       puts line_2
#     end
#   end
# }


# path = Pathname("jawiki-country.json")
# File.foreach(path) { |line|
#   hash = JSON.parse(line)
#   if hash["title"] == "イギリス"
#     array = hash["text"].split(/\n/)
#     array.each do |line_2|
#       if line_2.include?("[[Category:")
#         puts line_2
#       end
#     end
#     break
#   end
# }

require "./british_article"

array =  british_article.split(/\n/)
array.each do |line_2|
  if line_2.match(/\[\[Category:/)
    puts line_2
  end
end