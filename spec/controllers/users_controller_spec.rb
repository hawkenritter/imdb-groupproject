require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	describe "Users signup/login"
   it "blocks unauthenticated access" do
    sign_in nil
    get :new
    expect(response).to render_template(:new)
  end

  it "allows authenticated access" do
    sign_in
    get :new
    expect(response).to be_success
  end
end
