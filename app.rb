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
    number = params[:number].to_i
    i = 0
    loop do 
      out += params[:phrase]
      i+=1 
      if(i>=number)
        break
      end
    end
    out
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when "add"
      return (num1+num2).to_s
    when "subtract"
      return (num1-num2).to_s 
    when "multiply"
      return (num1*num2).to_s
    when "divide"
      return (num1/num2).to_s 
    end

  end 
end