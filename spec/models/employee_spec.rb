require 'rails_helper'
RSpec.describe Employee, type: :model do
  describe 'relationships' do
    it { should have_many :shop_employees }
    it { should have_many(:shops).through(:shop_employees) }

  end
end
