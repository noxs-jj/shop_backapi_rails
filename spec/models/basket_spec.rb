# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Basket, type: :model do
  it { should validate_uniqueness_of(:reference) }
  it { should validate_uniqueness_of(:user_uuid) }
end
