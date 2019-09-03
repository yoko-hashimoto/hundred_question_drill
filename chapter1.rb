# 00. 文字列の逆順
puts "stressed".reverse

# 01. 「パタトクカシーー」
result = []
str = "パタトクカシーー"
[1, 3 ,5 ,7].each do |number|
  num = number - 1
  result.push(str[num])
end
puts result.join

index = [1, 3, 5, 7].map { |n| n - 1}
string = []
"パタトクカシーー".each_char.with_index { |ch, i| string << ch if index.include?(i) }
puts string.join

index = [1, 3, 5, 7]
split_character = "パタトクカシーー".chars
puts split_character.map.with_index(1) { |ch, i| ch if index.include?(i) }.join

# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
police_car = "パトカー".chars
taxi = "タクシー".chars
concatenated_string = police_car.zip(taxi).flatten.join
p concatenated_string

#03. 円周率
words = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.".delete("," , ".").split(" ")
p words.map { |s| s.length }

# 04. 元素記号

def test04
  result = { }
  words = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.".delete(".").split(" ")
  p words
  target_indexes = [1, 5, 6, 7, 8, 9, 15, 16, 19]
  words.each_with_index do |word, i|
    index = i + 1
    if target_indexes.include?(index) 
      key = word[0]
    else
      key = word[0, 2]
    end
    result[key] = index

  end
  p result

  # int.each do |i|
  #   i -= 1
  #   p key = words[i].slice(0, 1)
  #   i += 1
  #   p value = words.index(words[i])
  #   result[key] = [value]
  #   puts result
  # end
end

test04

def test04_01
  result = { }
  words = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.".delete(".").split(" ")
  p words
  target_indexes = [1, 5, 6, 7, 8, 9, 15, 16, 19]
  index = 1
  words.each do |word|
    if target_indexes.include?(index) 
      key = word[0]
    else
      key = word[0, 2]
    end
    result[key] = index
    index += 1
  end
   p result
end

test04_01


# def test05_char_bi_gram
# strings = "I am an NLPer".split("", 2)
# p strings
# end

# test05_char_bi_gram
