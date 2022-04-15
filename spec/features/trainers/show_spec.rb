require 'rails_helper'

RSpec.describe 'Trainer Show' do
  let!(:trainer) { create(:trainer) }
  before { visit "/trainers/#{trainer.id}" }

  it 'has the correct path' do
    expect(current_path).to eq("/trainers/#{trainer.id}")
  end

  it 'returns the trainer attributes' do
    expect(page).to have_content(trainer.name)
    expect(page).to have_content(trainer.certified)
    expect(page).to have_content(trainer.years_of_experience)
    expect(page).to have_content(trainer.id)
  end
end
