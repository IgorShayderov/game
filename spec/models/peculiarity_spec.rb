require 'rails_helper'

RSpec.describe Peculiarity, type: :model do
  describe 'validations' do
    it { should define_enum_for(:kind) }
  end
end
