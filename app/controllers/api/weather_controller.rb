class WeatherController < ApplicationController

  def current_temperature
    WeatherClient.new.call(nil)
  end
end
