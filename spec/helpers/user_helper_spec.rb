require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UserHelper. For example:
#
# describe UserHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UserHelpers, type: :helper do
 def sign_in(user = double('user'))
      if user.nil?
        allow(request.env['warden']).to receive(:authenticate!).and_throw(:warden, {:scope => :user})
        allow(controller).to receive(:current_user).and_return(nil)
      else
        allow(request.env['warden']).to receive(:authenticate!).and_return(user)
        allow(controller).to receive(:current_user).and_return(user)
      end
    end
end
