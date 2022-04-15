require 'rails_helper'

describe 'Athletes Index View' do
  let!(:trainer) { create(:trainer) }
  let!(:athletes) { create_list(:athlete, 3, previous_coaching: true) }
  before { visit '/athletes' }

  it 'is the correct paht' do
    expect(current_path).to eq('/athletes')
  end

  it 'displays all Athletes' do
    athletes.each do |athlete|
      expect(page).to have_content(athlete.name)
    end
  end
end
