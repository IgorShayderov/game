require 'rails_helper'

RSpec.describe Effect, type: :model do
  describe 'validations' do
    it { should define_enum_for(:effect_type) }
    it { should define_enum_for(:unit) }
  end
end
