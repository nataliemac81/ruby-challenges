require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

list = doc.css('.components-list').inner_text

ingredients = list.split(',')

# list.each do |item|
# 	puts item
# end

puts ingredients