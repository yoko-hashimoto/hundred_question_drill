#03. 円周率
words = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.".delete("," , ".").split(" ")
# p words.map { |s| s.length }
p words.map(&:length)