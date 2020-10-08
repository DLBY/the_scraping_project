require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))



name = []
price = []

count = page.xpath("//*[@id='__next']/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr").count

count.times do |i|
  name << page.xpath("//*[@id='__next']/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{i + 1}]/td[3]/div").inner_html
  price << page.xpath("//*[@id=\"__next\"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{i + 1}]/td[5]/a").inner_html.delete("$")
end


hash = Hash[name.zip price]


puts hash

#"//*[@id='__next']/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{i + 1}]/td[3]/div").inner_html