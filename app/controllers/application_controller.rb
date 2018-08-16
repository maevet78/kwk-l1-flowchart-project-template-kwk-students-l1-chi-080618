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
    
    elsif @user_ans == 23110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"
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