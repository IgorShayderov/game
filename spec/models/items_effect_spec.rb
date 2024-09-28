require 'rails_helper'

RSpec.describe ItemsEffect, type: :model do
  describe 'associations' do
    it { should belong_to(:item) }
    it { should belong_to(:effect) }
  end
end
