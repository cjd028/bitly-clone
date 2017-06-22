get '/' do
  erb :"static/index"
end

post '/shorten' do
	@url = Url.new(long_url: params[:long_url])
	if @url.save
		return @url.to_json
	else
		return "error"
	end
end
get '/:short_url' do
	 url = Url.find_by(short_url: params[:short_url])
	 url.click+= 1
	 url.save
	 redirect url.long_url

end

