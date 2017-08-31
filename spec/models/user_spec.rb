require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Users signup/login"

   it "blocks unauthenticated access" do
    sign_in nil

    get :index

    expect(response).to redirect_to(login_path)
  end

  it "allows authenticated access" do
    sign_in

    get :index

    expect(response).to be_success
  end
end
