file_name = "page.html"
output = File.open(file_name, "w")
begin
while line = output.gets
output.puts line
end
output.close
rescue Exception
STDERR.puts "Failed to download  #{$!}"
output.close
File.delete(file_name)
raise
end