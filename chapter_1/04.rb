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