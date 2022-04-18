require 'rails_helper'

RSpec.describe 'Trainers index' do
  let!(:trainers) { create_list(:trainer, 3, certified: false) }
  before { visit '/trainers' }

  it 'has correct path' do
    expect(current_path).to eq('/trainers')
  end

  it 'renders all trainers' do
    trainers.each do |trainer|
      expect(page).to have_content(trainer.name)
      expect(page).to have_content(trainer.created_at)
    end
  end

  it 'has title All Trainers' do
    expect(page).to have_content(/All Trainers/)
  end

  it 'displays the Trainers by most recently created' do
    expect(trainers.last.name).to appear_before(trainers.first.name)
  end
end
