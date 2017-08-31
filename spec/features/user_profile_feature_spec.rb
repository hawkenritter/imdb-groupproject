require 'rails_helper'

feature "visiting the user's profile page" do

  let(:user) { FactoryGirl.create(:user)  }
  before(:each) do
    login_as(user, :scope => :user)
  end

  let(:movie) { FactoryGirl.create(:movie) }

  scenario "the user sees his/her watchlist" do
    new_watchlist_addition = Watchlist.create!(user_id: user.id, movie_id: movie.id)
    visit "/profile/#{user.id}"

    within("#user_watchlist") do
      # Testing that the movie is display in the Watchlist section
      expect(page).to have_content new_watchlist_addition.movie.title
      first(:link, "#{new_watchlist_addition.movie.title}").click
      # Testing that the movie title is a link that takes you to the corresponding movie page
      expect(page).to have_current_path movie_path(new_watchlist_addition.movie)
    end


  end


  scenario "the user sees his/her favorites" do
    new_favorite_addition = Favorite.create!(user_id: user.id, movie_id: movie.id)
    visit "/profile/#{user.id}"

    within("#user_favorites") do
      # Testing that the movie is display in the Favorites section
      expect(page).to have_content new_favorite_addition.movie.title
      first(:link, "#{new_favorite_addition.movie.title}").click
      # Testing that the movie title is a link that takes you to the corresponding movie page
      expect(page).to have_current_path movie_path(new_favorite_addition.movie)
    end

  end

  scenario "the user sees his/her comments" do
    new_comment_addition = Comment.create!(user_id: user.id, movie_id: movie.id, description: "Test Comment")
    visit "/profile/#{user.id}"

    within("#user_comments") do
      # Testing that the comment is display in the Comments section
      expect(page).to have_content new_comment_addition.description
    end
  end

  scenario "the user sees his/her activity feed" do
    new_activity_addition = Activity.create!(user_id: user.id, movie_id: movie.id, action: "commented on the movie")
    visit "/profile/#{user.id}"

    within("#user_activity") do
      # Testing that the new activity is display in the Activity section
      expect(page).to have_content new_activity_addition.action
    end
  end
end