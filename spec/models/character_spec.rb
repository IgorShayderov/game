require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'validations' do
    it { validate_presence_of(:name) }
    it { validate_uniqueness_of(:name) }
  end
end
