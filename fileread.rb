def name
file_name = "page.html"
output = File.open(file_name, "r")
while line = output.gets
output.puts line
end
output.close
end

name