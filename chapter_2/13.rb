col1_file = File.read("col1.txt").split("\n")
col2_file = File.read("col2.txt").split("\n")
merge_file = col1_file.zip(col2_file)
separate_cols_with_tabs = merge_file.map {|row| row.join("\t") }
puts separate_cols_with_tabs.join("\n")
File.write("result.txt", separate_cols_with_tabs.join("\n"))