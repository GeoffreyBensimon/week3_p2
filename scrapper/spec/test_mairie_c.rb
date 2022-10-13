require_relative '../lib/mairie_c'

describe "general" do
    it "return the name of city" do
         expect(ville).to include {"Aincourt"}
         expect(villes).to include {"Gonesse"}
         expect(villes).to include {"Sannois"}
    end
end