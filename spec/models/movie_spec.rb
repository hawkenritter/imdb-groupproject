require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe Movie do
    let(:movie) { Movie.new }

    before(:each) do
      movie.title = "This is a Title"
      movie.description = "Description"
      movie.actors = "Actor 1, Actor 2"
      movie.directors = "Director"
      movie.release_date = Date.new(2017)
      movie.image_url = "http://image.example.com"
      movie.save
    end

    context "#attributes" do
      it "has a title" do
        expect(movie.title).to eq("This is a Title")
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

    context "#search for a single result output" do
      it "searches for a full movie title that exists" do
        expect(Movie.search("This is a Title")).to eq([movie])
      end

      it "searches for the beginning part of a movie title that exists" do
        expect(Movie.search("This")).to eq([movie])
      end

      it "searches for the end part of a movie title that exists" do
        expect(Movie.search("Title")).to eq([movie])
      end
    end

    context "#search for multiple results" do
      let(:movie2) { Movie.new }

      before(:each) do
        movie2.title = "This is a Title 2"
        movie2.description = "Description 2"
        movie2.actors = "Actor 1, Actor 2"
        movie2.directors = "Director 2"
        movie2.release_date = Date.new(2016)
        movie2.image_url = "http://image.example.com"
        movie2.save
      end

      it "searches for the beginning part of a movie title that exists" do
        expect(Movie.search("This")).to eq([movie, movie2])
      end
    end

    context "#search for a non-existing result output" do
      it "searches for a movie that doesn't exist" do
        expect(Movie.search("Not here")).to eq([])
      end
    end
  end
end