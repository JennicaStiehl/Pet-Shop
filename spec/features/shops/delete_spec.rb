require 'rails_helper'
RSpec.describe 'as a visitor' do
  before :each do
    @emilys_pets = Shop.create(shop_name:"Emily's Pets", city:"Denver")
    @sals_pets = Shop.create(shop_name:"Sal's Pets", city:"Thornton")
    @jims_pets = Shop.create(shop_name:"Jim's Pets", city:"Englewood")
    @megans_pets = Shop.create(shop_name:"Megan's Pets", city:"Denver")
  end
  describe 'when i visit the shop show page' do
    it 'i can delete that shop and return to the index page' do
      visit shops_path
      click_on "Emily's Pets"
      expect(current_path).to eq(shop_path(@emilys_pets))
      expect(page).to have_content("Emily's Pets")
      expect(page).to have_content("Denver")
      click_on "Delete Shop"
      expect(current_path).to eq(shops_path)
      expect(page).to_not have_content("Emily's Pets")
    end
  end
end
