require 'rails_helper'

RSpec.describe Athlete, type: :model do
  describe 'relationships' do
    it { should belong_to(:trainer) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3) }
    it { should validate_presence_of(:previous_coaching) }
    it { should have_db_column(:previous_coaching).of_type(:boolean) }
    it { should validate_numericality_of(:age).is_greater_than(0).is_less_than(150) }
  end
end
