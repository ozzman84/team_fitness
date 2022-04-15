require 'rails_helper'

describe 'Athetes Show page' do
  let!(:athlete1) { create(:athlete, previous_coaching: true) }
  before { visit "/athletes/#{athlete1.id}" }

  it 'has athlete show path' do
    expect(current_path).to eq("/athletes/#{athlete1.id}")
  end

  it 'has the athletes attributes' do
    expect(page).to have_content(athlete1.name)
    expect(page).to have_content(athlete1.id)
    expect(page).to have_content(athlete1.previous_coaching)
    expect(page).to have_content(athlete1.age)
  end
end
