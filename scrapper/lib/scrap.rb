require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rspec'


def pairing_crypto
	doc = Nokogiri::HTML(File.open("html/cryp.html"))

	ar_name = []
	ar_price = []

	name = doc.xpath("//*[contains(@class, 'cmc-table__column-name--name')]")
	name.each do |name|
	  ar_name<<name.text
	end

	price = doc.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span")
 	price.each do |price|
	  ar_price<<price.text
	end

	crypto_scrapper = Hash[ar_name.zip(ar_price)]
	puts "#{crypto_scrapper}"
end
               
def crypto_scrapper
	pairing_crypto
end

crypto_scrapper
