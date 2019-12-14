require 'pathname'
require 'json'

def british_article
  path = Pathname("jawiki-country.json")
  File.foreach(path) { |line|
  # parseする事でハッシュ形式にする
  hash = JSON.parse(line)
    # paeseされたハッシュのキーはシンボルではなく文字列になる
    if hash["title"] == "イギリス"
      return hash["text"]
    end
  }
end
