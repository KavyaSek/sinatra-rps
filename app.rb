require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:mainpage)
end

get("/rock") do
  
array = ["rock","paper","scissors"]
@they = array.sample
if @they == "rock"
  @outcome = "tied!"
elsif @they == "paper"
  @outcome = "lost!"
else
  @outcome = "won!"
end
  
  erb(:rock)
end
