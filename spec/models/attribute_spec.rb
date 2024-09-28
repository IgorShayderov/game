require 'rails_helper'

RSpec.describe Attribute, type: :model do
  it { should define_enum_for(:attribute_type) }
end
