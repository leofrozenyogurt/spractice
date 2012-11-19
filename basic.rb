require "rubygems"
require "sinatra"

get "/" do 
  "Hello World"
end


get "/about" do
  "this is a little about me"
end

get "/lol" do
  erb :lulzy
end

post "/lol" do
  "Your so '#{params[:lulz]}'z"
end



get "/hello/:name" do
  params[:name]
end



get "/form" do
  erb :form
end

post '/form' do  
  "You said '#{params[:message]}'"  
end

get "/secret" do 
  erb :secret
end

post '/secret' do  
  params[:secret].reverse  
end

get "/decrypt" do
  erb :decryptor
end


post '/decrypt' do  
  params[:message_to_decrypt].reverse  
end

not_found do 
  status 404
  erb :page_not_found
end
