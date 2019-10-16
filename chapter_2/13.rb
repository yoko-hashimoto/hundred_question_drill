# col1_file = File.read("col1.txt").split("\n")
# col2_file = File.read("col2.txt").split("\n")
# merge_file = col1_file.zip(col2_file)
# separate_cols_with_tabs = merge_file.map {|row| row.join("\t") }
# puts separate_cols_with_tabs.join("\n")
# File.write("result.txt", separate_cols_with_tabs.join("\n"))


col1_words = File.readlines("col1.txt", chomp: true)
col2_words = File.readlines("col2.txt", chomp: true)
p col1_words
p col2_words
merged_words = col1_words.zip(col2_words)
p merged_words
new_lines = merged_words.map { |words| words.join("\t") }
p new_lines.join("n")

File.write("result.txt", new_lines.join("\n"))


