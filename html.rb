require 'open-uri'
require 'nokogiri'
def parse
	#doc = Nokogiri::HTML(open("http://travel.tripcase.com/"))
	doc = Nokogiri::HTML(open("http://google.com/"))
	puts "Page title is " + doc.xpath("//title").inner_html
	puts "widget is" 
	puts doc.css('div.textwidget p')
end

parse