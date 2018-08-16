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
    
    # puts @answer
    # return answer
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
      
    elsif answer == "AFI"
      foundName="Giorgio Armani Beauty Maestro Fusion Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://m.sephora.com/productimages/sku/s1441542-main-Lhero.jpg"
      url="https://www.sephora.com/product/maestro-fusion-makeup-octinoxate-sunscreen-spf-15-P393403"
    
    elsif answer == "ADG"
      foundName="TARTE BB tinted Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $37 at Sephora"
      img="https://pompassion.files.wordpress.com/2015/08/tartebbcream.png?w=700&h=600&crop=1"
      url="https://www.sephora.com/product/bb-tinted-treatment-12-hour-primer-broad-spectrum-spf-30-sunscreen-P377542"  
    
    elsif answer == "AEG"
      foundName="LAURA MERCIER Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="http://www.poorlittleitgirl.com/wp-content/uploads/2014/04/Poor-Little-It-Girl-Laura-Mercier-Oil-Free-Tinted-Moistureizer.png"
      url="https://www.sephora.com/product/tinted-moisturizer-broad-spectrum-P1099363"
    
    elsif answer == "AFG"
      foundName="NARS Pure Radiant Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"
      url="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"  
      
    elsif answer == "ADH"
      foundName="DIOR Airflash Spray Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://images.prod.meredith.com/product/60ba0bd7d961eae97cf796a26cf38dbe/1524890841906/l/dior-dior-airflash-spray-foundation-600-mocha-2-3-oz-70-ml"
      url="https://www.sephora.com/product/diorskin-airflash-spray-foundation-P104914"
    
    # elsif answer == "AFI"
    #   foundName="Giorgio Armani Beauty Maestro Fusion Makeup"
    #   welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
    #   descrip="#{foundName} is priced at $64 at Sephora"
    #   img="https://m.sephora.com/productimages/sku/s1441542-main-Lhero.jpg"
    #   url="https://www.sephora.com/product/maestro-fusion-makeup-octinoxate-sunscreen-spf-15-P393403"  
      
    # elsif answer == "AFI"
    #   foundName="Giorgio Armani Beauty Maestro Fusion Makeup"
    #   welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
    #   descrip="#{foundName} is priced at $64 at Sephora"
    #   img="https://m.sephora.com/productimages/sku/s1441542-main-Lhero.jpg"
    #   url="https://www.sephora.com/product/maestro-fusion-makeup-octinoxate-sunscreen-spf-15-P393403"
    
    # elsif answer == "AFI"
    #   foundName="Giorgio Armani Beauty Maestro Fusion Makeup"
    #   welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
    #   descrip="#{foundName} is priced at $64 at Sephora"
    #   img="https://m.sephora.com/productimages/sku/s1441542-main-Lhero.jpg"
    #   url="https://www.sephora.com/product/maestro-fusion-makeup-octinoxate-sunscreen-spf-15-P393403"    
  end

# post '/results2' do
    
#     letter_array = params.values 
#     answer = letter_array.join("")
    
#     puts answer
#     return answer
      
#   end
  
#   post '/results3' do
    
#     letter_array = params.values 
#     answer = letter_array.join("")
    
#     puts answer
#     return answer
      
#   end

# post '/results4' do
    
#     letter_array = params.values 
#     answer = letter_array.join("")
    
#     puts answer
#     return answer
      
#   end

end
end  