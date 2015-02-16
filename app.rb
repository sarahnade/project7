require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
		@holidays = HolidApi.get(country: 'US', year: 1994, month: 5)
		@current = HolidApi.get(country: 'US', year: Time.now.year, month: Time.now.month)
		erb :index
	end
end
