class Api::V1::ActivityController < ApplicationController
  respond_to :json

  def index
    # binding.pry
    @information = Request.new(valid_params)
    render json: {
      sleep_on_date: @information.sleep_on_date(valid_params["date"]),
      steps_on_date: @information.steps_on_date(valid_params["date"]),
      status: "success",
    }
  end

  private

  def valid_params
    params.require(:request).permit(:uid,
                                  :token,
                                  :secret,
                                  :date)
  end


end
