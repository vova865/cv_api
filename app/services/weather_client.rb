class WeatherClient
  URL = 'http://dataservice.accuweather.com/currentconditions/v1/294021'

  def initialize
    @api_key = ENV['API_KEY']
  end

  def call(param)
    req(param)
  end

  private

  def req(param)
    binding.pry
    new_url = param ? URL + param : URL
    response = RestClient.get new_url, { params: { apikey: @api_key } }
    JSON.parse(response.body)
  end

end
