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

get("/paper") do
  
  array = ["rock","paper","scissors"]
  @they = array.sample
  if @they == "rock"
    @outcome = "won!"
  elsif @they == "paper"
    @outcome = "tied!"
  else
    @outcome = "lost!"
  end
    
    erb(:paper)
  end

  get("/scissors") do
  
    array = ["rock","paper","scissors"]
    @they = array.sample
    if @they == "rock"
      @outcome = "lost!"
    elsif @they == "paper"
      @outcome = "won!"
    else
      @outcome = "tied!"
    end
      
      erb(:scissors)
    end
    