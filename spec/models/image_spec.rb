require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'associations' do
    subject { FactoryBot.build(:image) }

    it { should have_one_attached(:file) }
    it { should belong_to(:imageable) }
  end
end
