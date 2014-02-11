class Request < ActiveRecord::Base
  attr_reader :client


  def initialize(params)
    @client = Fitgem::Client.new({
      :consumer_key    => ENV["FITBIT_KEY"],
      :consumer_secret => ENV["FITBIT_SECRET"], 
      :token           => params["token"],
      :secret          => params["secret"],
      :uid             => params["uid"]
      })
  end

  def sleep_on_date(date)
    (client.sleep_on_date(DateTime.parse(date))["summary"]["totalMinutesAsleep"]) / 60
  end

  def steps_on_date(date)
    client.activities_on_date(DateTime.parse(date))["summary"]["steps"]
  end

end
