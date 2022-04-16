FactoryBot.define do
  factory :athlete do
    association :trainer
    name { Faker::Name.unique.name }
    previous_coaching { true }
    age { Faker::Number.within(range: 4..149) }
  end
end
