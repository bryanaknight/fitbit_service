require 'spec_helper'

describe Api::V1::ActivityController do

  describe "GET index" do
    it "retrieves response from API" do 
      get :index, valid_params
      JSON.parse(response.body)["status"] == "success"
    end
  end

end

def valid_params
  { request: 
    { 
      token: ENV["USER_TOKEN"],
      secret: ENV["USER_SECRET"],
      uid: ENV["USER_UID"],
      date: DateTime.now
    }
  }
end
