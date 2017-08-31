require 'rails_helper'

RSpec.describe UserController, type: :controller do

      

   it "blocks unauthenticated access" do
    sign_in nil
    
    get :login_path
    
    expect(response).to redirect_to(login_path)
  end
  
  it "allows authenticated access" do
    sign_in
    
    get :login_
    
    expect(response).to be_success
  end
  
end
