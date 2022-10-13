require 'nokogiri'
require 'open-uri'
require 'rspec'


doc = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
villes = doc.xpath("//*[contains(@class, 'lientxt')]").each do |node|
	  puts node.text
	end


doc_2 = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com/95/ableiges.html"))
townhall_url = doc_2.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").each do |cut|
  puts cut.text
end






