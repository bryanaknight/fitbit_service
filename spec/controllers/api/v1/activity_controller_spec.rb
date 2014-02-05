require 'spec_helper'

describe Api::V1::ActivityController do

  # describe "POST create" do
  #   before do
  #     ApplicationController.any_instance.stub(:current_user).and_return(user)
  #     # FatsecretAPI.food
  #   end

  #   xit "saves food to database" do
  #     VCR.use_cassette('save_food') do 
  #       post :create, valid_params 
  #     end
  #   end
  # end

  describe "GET index" do

    it "retrieves response from API" do 
      get :index, valid_params
      expect(response) 
    end
  end

end
