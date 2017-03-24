require "administrate/page/show"

describe Administrate::Page::Show do
  describe "#page_title" do
    it "is the stringified resource" do
      customer = double(name: "Worf")
      page = Administrate::Page::Show.new(CustomerDashboard.new, customer)

      expect(page.page_title).to eq("Worf")
    end
  end
  
  describe '#attributes' do
    it 'passes the resource to the field object' do
      customer = double(name: "Worf")
      page = Administrate::Page::Show.new(CustomerDashboard.new, customer)
      
      expect(page.attributes.first.resource).to eq(customer)
    end
  end
  
end
