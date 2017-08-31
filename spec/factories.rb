FactoryGirl.define do
  factory :movie do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    actors { "#{Faker::Name.name} as '#{Faker::GameOfThrones.character}'" }
    directors { Faker::Name.name }
    release_date { Date.new(1960) }
    image_url { Faker::LoremPixel.image("182x268") }
  end
end

FactoryGirl.define do
  factory :user do
    username { Faker::Name.unique.name }
    email { Faker::Internet.email }
    password 'password'
  end
end