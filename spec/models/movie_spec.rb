require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe Movie do
    let(:movie) { Movie.new }

    before(:each) do
      movie.title = "Title"
      movie.description = "Description"
      movie.actors = "Actor 1, Actor 2"
      movie.directors = "Director"
      movie.release_date = Date.new(2017)
      movie.image_url = "http://image.example.com"
      movie.save
    end

    context "#attributes" do
      it "has a title" do
        expect(movie.title).to eq("Title")
      end

      it "has a desciption" do
        expect(movie.description).to eq("Description")
      end

      it "has actors" do
        expect(movie.actors).to eq("Actor 1, Actor 2")
      end

      it "has directors" do
        expect(movie.directors).to eq("Director")
      end

      it "has a release date" do
        expect(movie.release_date.year).to eq(2017)
      end

      it "has an image url" do
        expect(movie.image_url).to eq("http://image.example.com")
      end
    end

    context "Movie.search" do

    end
  end
end