require 'rails_helper'

describe "Trainer's Athletes Index" do
  let!(:trainers) { create_list(:trainer, 2) }
  let!(:athletes) {
    create_list(:athlete, 3, previous_coaching: true, trainer_id: trainers.first.id)
  }
  let!(:other_athletes) { create(:athlete, trainer_id: trainers.last.id) }
  before { visit "/trainers/#{trainers.first.id}/athletes" }

  it 'has the correct path' do
    expect(current_path).to eq("/trainers/#{trainers.first.id}/athletes")
  end

  it 'displays All first Trainers Athletes' do
    trainers.first.athletes.each do |athlete|
      expect(page).to have_content(athlete.name)
    end
  end

  it 'does not display last trainers athletes' do
    expect(page).to_not have_content(other_athletes.name)
  end

  it 'displays the number of athletes for that trainer' do
    expect(page).to have_content(athletes.length)
  end
end
