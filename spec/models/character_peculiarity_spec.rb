require 'rails_helper'

RSpec.describe CharacterPeculiarity, type: :model do
  subject { FactoryBot.build(:character_peculiarity) }

  describe 'associations' do
    it { should belong_to(:character) }
    it { should belong_to(:peculiarity) }
  end
end
