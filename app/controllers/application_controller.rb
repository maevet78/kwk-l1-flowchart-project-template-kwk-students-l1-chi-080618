require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/foundation' do
    erb :foundation
  end

  post '/results' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      if answer == "ADI"
      foundName="Lancôme Teint Idole Ultra Longwear Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>" 
      descrip="#{foundName} is priced at $47 at Sephora" 
      img="https://img.makeupalley.com/hwthumb/980/980/1_1_8_1_3210237.JPG"
      url="https://www.sephora.com/product/teint-idole-ultra-24h-long-wear-foundation-P308201"
    
    elsif answer == "AEI"
      foundName="DIOR Forever Perfect Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $52 at Sephora"
      img="https://media1.popsugar-assets.com/files/thumbor/6xUGvKWh3Zz7hFAWhtWqmz6T0LY/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2018/02/26/720/n/43659231/865f901f03ff7d8d_diorskinmaturefoundatin/i/Dior-Diorskin-Forever-Perfect-Foundation.jpg"
      url="https://www.sephora.com/product/diorskin-forever-perfect-foundation-broad-spectrum-35-P405059"
  end

post '/results2' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  post '/results3' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

post '/results4' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

end