require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse 
  end
  
  get '/square/:number' do 
    "#{params[:number].to_i*params[:number].to_i}"
  end
  
  get '/say/:number/:phrase' do 
    out = ""
    params[:number].to_i.times do 
      out += phrase
    end
    out
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} "
  end 
  
end