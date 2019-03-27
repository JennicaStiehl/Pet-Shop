require 'rails_helper'
RSpec.describe Shop, type: :model do
  before :each do
    @emilys_pets = Shop.create(shop_name:"Emily's Pets", city:"Denver")
    @sals_pets = Shop.create(shop_name:"Sal's Pets", city:"Thornton")
    @jims_pets = Shop.create(shop_name:"Jim's Pets", city:"Englewood")
    @megans_pets = Shop.create(shop_name:"Megan's Pets", city:"Denver")
    @emilys_pets.pets.create(name:"Gloria", animal_type:"cat", age:8)
    @emilys_pets.pets.create(name:"Joe", animal_type:"cat", age:20)
    @emilys_pets.pets.create(name:"Mercy", animal_type:"dog", age:9)
    @emilys_pets.pets.create(name:"Little Bit", animal_type:"cat", age:12)
  end
  describe 'relationships' do
    it { should have_many :pets }
    it { should have_many :shop_employees }
    it { should have_many(:employees).through(:shop_employees) }
  end
  describe 'class methods' do
    it 'can calc total pets' do
      actual = Shop.total_pets
      expect(actual).to eq(4)
    end
  end
end
