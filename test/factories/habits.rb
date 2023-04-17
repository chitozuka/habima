FactoryBot.define do
  factory :habit do
    sequence(:name) { |n| "name_#{n}" }
  end
end
