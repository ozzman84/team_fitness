require 'rails_helper'

describe 'Trainers New View' do
  let!(:trainer) { create(:trainer) }
  before {
    visit trainers_path
    click_link('Create Trainer')
  }

  describe 'Create new parent form' do
    it 'has the new parent path' do
      expect(current_path).to eq(new_trainer_path)
    end

    it 'can create new Trainer' do
      fill_in('Name', with: Faker::Name.unique.name)
      fill_in('Years of experience', with: 5)
      check('Certified')
      click_button('Create Trainer')

      expect(current_path).to eq(trainers_path)
      expect(page).to have_content(Trainer.last.name)
    end
  end
end
