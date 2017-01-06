require 'open-uri'
require 'nokogiri'
def parse
	doc = Nokogiri::XML(open("/home/chandra/Desktop/Ruby Practice/samplexml.xml"))
	puts doc
	puts doc.xpath("//alien")
end

parse