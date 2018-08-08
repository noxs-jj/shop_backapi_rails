require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should validate_uniqueness_of(:reference) }
end
