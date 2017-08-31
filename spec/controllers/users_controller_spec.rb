require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  user = FactoryGirl.create(:user)
	#login_as(user, :scope => :user)

end
