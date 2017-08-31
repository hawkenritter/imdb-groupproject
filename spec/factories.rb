FactoryGirl.define do
  factory :movie do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    actors { "#{Faker::Name.name} as '#{Faker::GameOfThrones.character}'" }
    directors { Faker::Name.name }
    release_date { Date.new(Math.random(1960..2017)) }
    image_url { Faker::LoremPixel.image("182x268") }
  end
end