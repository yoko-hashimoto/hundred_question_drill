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