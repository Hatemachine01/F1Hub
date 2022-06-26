
require 'json'
require 'net/http'
require 'open-uri'

class F1Data

	def api_call?
		url = 'https://ergast.com/api/f1/current.json'
		uri = URI(url)
		response = Net::HTTP.get(uri)
		data = JSON.parse(response)
		data['RaceTable']
	end
end 




