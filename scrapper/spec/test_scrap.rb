require_relative '../lib/scrap'



describe "general" do
        it "return the name of crypto" do
             expect(crypto_scrapper).to include {"Bitcoin"}
        end
end