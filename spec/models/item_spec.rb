require 'rails_helper'

RSpec.describe Item, type: :model do
  subject { FactoryBot.build(:item) }

  describe 'validations' do
    it { should define_enum_for(:item_type) }
    it { should define_enum_for(:appliance) }
    it { should define_enum_for(:item_kind) }
    it { should define_enum_for(:tier) }
  end

  describe 'associations' do
    it { should have_many(:items_effects) }
    it { should have_many(:effects).through(:items_effects) }
    it { should have_many(:images) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
