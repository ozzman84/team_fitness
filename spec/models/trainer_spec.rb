require 'rails_helper'

RSpec.describe Trainer, type: :model do
  describe 'relationships' do
    it { should have_many(:athletes).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3) }
    it { should allow_value(true).for(:certified) }
    it { should allow_value(false).for(:certified) }
    it { should have_db_column(:certified).of_type(:boolean) }
    it { should validate_numericality_of(:years_of_experience).is_greater_than(0).is_less_than(150) }
  end

  describe 'methods' do
    let!(:trainers) { create_list(:trainer, 3) }

    it 'orders Trainers by most recently created' do
      expect(Trainer.recently_created.first).to eq(trainers.last)
    end
  end
end
