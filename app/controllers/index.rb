get '/' do
  @tweeted = false
  erb :index
end

post '/tweet' do
  $client.update(params[:tweet])
  @tweeted = true
  erb :index, layout: !request.xhr?
end
