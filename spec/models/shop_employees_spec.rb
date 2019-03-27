require 'rails_helper'
RSpec.describe ShopEmployee, type: :model do
  describe 'relationships' do
    it { should belong_to :shop }
    it { should belong_to :employee }
  end
end
