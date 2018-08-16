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
      descrip="#{foundName} is priced at $62 at Sephora"
      img="https://images.prod.meredith.com/product/60ba0bd7d961eae97cf796a26cf38dbe/1524890841906/l/dior-dior-airflash-spray-foundation-600-mocha-2-3-oz-70-ml"
      url="https://www.sephora.com/product/diorskin-airflash-spray-foundation-P104914"
    
    elsif answer == "AEH"
      foundName="Giorgio Armani Beauty Luminous Silk Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://cdn.influenster.com/media/product/image/armani.jpg.750x750_q85ss0_progressive.jpg"
      url="https://www.sephora.com/product/luminous-silk-foundation-P393401"  
      
    elsif answer == "AFH"
      foundName="Dr.Jart and Premium Beauty Balm"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $39 at Sephora"
      img="https://www.sephora.com/productimages/sku/s1327915-main-zoom.jpg"
      url="https://www.sephora.com/product/premium-beauty-balm-spf-45-P285403"
    
    elsif answer == "BDG"
      foundName="Clinique Superbalanced Silk Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $27 at Sephora"
      img="https://www.clinique.co.uk/media/export/cms/spp_related_content/SuperbalancedSilk_Superbalanced_M35.jpg"
      url="https://www.sephora.com/product/superbalanced-silk-makeup-broad-spectrum-15-P411552" 
      
    elsif answer == "BEG"
      foundName="Tarte Amazonian Clay BB Tinted"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://static-reg.lximg.com/images/product_images/zoom_12694_Tarte_WEB_1630862ccf0c364a80ed809bacae44b2d933f896_1523777105.png"
      url="https://www.sephora.com/product/amazonian-clay-bb-tinted-moisturizer-broad-spectrum-spf-20-sunscreen-P67617"
    
    elsif answer == "BFG"
      foundName="NARS Pure Radiant Tinted Moisturizer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $45 at Sephora"
      img="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"
      url="https://www.sephora.com/product/pure-radiant-tinted-moisturizer-spf-30-pa-P302923"  
      
    elsif answer == "BDH"
      foundName="DIOR Airflash Spray Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $62 at Sephora"
      img="https://images.prod.meredith.com/product/60ba0bd7d961eae97cf796a26cf38dbe/1524890841906/l/dior-dior-airflash-spray-foundation-600-mocha-2-3-oz-70-ml"
      url="https://www.sephora.com/product/diorskin-airflash-spray-foundation-P104914"
    
    elsif answer == "BEH"
      foundName="Giorgio Armani Beauty Luminous Silk Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $64 at Sephora"
      img="https://cdn.influenster.com/media/product/image/armani.jpg.750x750_q85ss0_progressive.jpg"
      url="https://www.sephora.com/product/luminous-silk-foundation-P393401"  
      
    # elsif answer == "AFH"
    #   foundName="Dr.Jart and Premium Beauty Balm"
    #   welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
    #   descrip="#{foundName} is priced at $39 at Sephora"
    #   img="https://www.sephora.com/productimages/sku/s1327915-main-zoom.jpg"
    #   url="https://www.sephora.com/product/premium-beauty-balm-spf-45-P285403"
    
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