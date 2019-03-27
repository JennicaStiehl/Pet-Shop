require 'rails_helper'
RSpec.describe 'as a visitor' do
  describe 'when i visit the shop index' do
    it 'i can add a shop' do
      jls = "Joe's Little Pets"
      city = "Denver"
      visit shops_path

      click_on "Add a Shop"

      fill_in "shop_shop_name", with: jls
      fill_in "shop_city", with: city
      click_on "Create Shop"

      expect(current_path).to eq(shops_path)
      expect(page).to have_content("Joe's Little Pets")
    end
  end
end
