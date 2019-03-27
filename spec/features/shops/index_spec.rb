require 'rails_helper'
RSpec.describe 'As a visitor' do
  before :each do
    @emilys_pets = Shop.create(shop_name:"Emily's Pets", city:"Denver")
    @sals_pets = Shop.create(shop_name:"Sal's Pets", city:"Thornton")
    @jims_pets = Shop.create(shop_name:"Jim's Pets", city:"Englewood")
    @megans_pets = Shop.create(shop_name:"Megan's Pets", city:"Denver")
  end
  describe ' to the shop index page' do
    it 'i see all of the shops and their locations' do
      visit shops_path
      expect(page).to have_content(@emilys_pets.shop_name)
      expect(page).to have_content(@emilys_pets.city)
      expect(page).to have_content(@sals_pets.shop_name)
      expect(page).to have_content(@sals_pets.city)
      expect(page).to have_content(@jims_pets.shop_name)
      expect(page).to have_content(@jims_pets.city)
      expect(page).to have_content(@megans_pets.shop_name)
      expect(page).to have_content(@megans_pets.city)
    end
  end
end
