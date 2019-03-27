require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe 'relationships' do
    it { should belong_to :shop}
  end
  describe 'validations' do
    it { should validate_presence_of :animal_type }
    it { should validate_presence_of :age }
    it { should validate_numericality_of :age }
  end

end
