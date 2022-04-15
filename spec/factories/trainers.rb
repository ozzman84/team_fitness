FactoryBot.define do
  factory :trainer do
    name { Faker::Name.unique.name }
    certified { false }
    years_of_experience { Faker::Number.within(range: 4..149) }
  end
end
