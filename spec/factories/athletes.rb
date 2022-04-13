FactoryBot.define do
  factory :athlete do
    association :trainer
    name { Faker::Name.unique.name }
    previous_coaching { Faker::Boolean.boolean }
    age { Faker::Number.within(range: 3..150) }
  end
end
