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
      foundName="Smashbox Studio Skin 15 Hour Hydrating Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://beauty411.net/wp-content/uploads/2016/09/Smashbox-Studio-Skin-15-Hour-Foundation.jpg"
      url="https://www.sephora.com/product/studio-skin-15-hour-wear-foundation-P292403"  
      
    elsif answer == "BFH"
      foundName="NARS Sheer Glow Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $47 at Sephora"
      img="https://78.media.tumblr.com/3c6acd4c412e92416d50e18a37ec5698/tumblr_njljx1rmkt1qesrs5o1_500.jpg"
      url="https://www.sephora.com/product/sheer-glow-foundation-P247355"
    
    elsif answer == "BDI"
      foundName="Bareminerals BarePro Performance Wear Liquid Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $34 at Sephora"
      img="http://cdn8.bigcommerce.com/s-l36s8/images/stencil/1280x1280/products/2774/3464/Screen_Shot_2017-09-21_at_10.55.51_AM__56022.1506017828.png?c=2"
      url="https://www.sephora.com/product/barepro-performance-wear-liquid-foundation-broad-spectrum-spf-20-P421001"
      
      elsif answer == "BEI"
      foundName="Clinique Beyond Perfecting Foundation and Concealer"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $29 at Sephora"
      img="http://1.bp.blogspot.com/-SkP6MsRGeQw/VmnwIRKUGTI/AAAAAAAAAl8/HC2CnWDr2AQ/s1600/Clinique-Beyond-Perfecting-foundation-review.jpg"
      url="https://www.sephora.com/product/beyond-perfecting-foundation-concealer-P393325" 
      
    elsif answer == "BFI"
      foundName="NARS All Day Luminous Weightless Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $49 at Sephora"
      img="http://sidewalkhustle.com/wp-content/uploads/2015/02/10/NARS-All-Day-Luminous-Weightless-Foundation.png"
      url="https://www.sephora.com/product/all-day-luminous-weightless-foundation-P393658"
    
    elsif answer == "CDG"
      foundName="Clinique Superbalanced Silk Makeup"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $27 at Sephora"
      img="https://www.clinique.co.uk/media/export/cms/spp_related_content/SuperbalancedSilk_Superbalanced_M35.jpg"
      url="https://www.sephora.com/product/superbalanced-silk-makeup-broad-spectrum-15-P411552"  
      
    elsif answer == "CEG"
      foundName="Makeup Forever Ultra HD Perfector Skin Tint"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://cdn.influenster.com/media/product/image/po.18559.jpg.750x750_q85ss0_progressive.jpg"
      url="https://www.sephora.com/product/ultra-hd-perfector-P428675"
    
    elsif answer == "CFG"
      foundName="Laneige BB Cushion Hydra Radiance"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://images.ctfassets.net/mk0gyd3cqdg6/6LNIA7RSHCyU8eUMscYuMq/99571210a0135b0cd6e3a251d0c6055b/Laneige_BB_Cushion_Hydra_Radiance.png?w=600&h=600&fit=pad&fm=jpg&fl=progressive&bg=white"
      url="https://www.sephora.com/product/bb-cushion-hydra-radiance-P420676"  
      
    elsif answer == "CDH"
      foundName="Too Faced Peach Perfect Comfort Matte Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $36 at Sephora"
      img="https://www.toofaced.com/dw/image/v2/BBWM_PRD/on/demandware.static/-/Sites-master-catalog/default/dwd15ed843/images/hi-res/Peach%20Perfect%20Foundation_1.png?sw=1200&sh=1200&sm=fit"
      url="https://www.sephora.com/product/peach-perfect-comfort-moisture-matte-foundation-peaches-cream-collection-P422601"
    
    elsif answer == "CEH"
      foundName="Sephora Collection Perfection Mist AirBrush Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $28 at Sephora"
      img="http://2.bp.blogspot.com/-RRSWyilSDpI/UieiSq6uX9I/AAAAAAAAABs/nIiFO1loaEY/s1600/Screen+shot+2013-09-04+at+5.08.55+PM.png"
      url="https://www.sephora.com/product/perfection-mist-airbrush-foundation-P381155"
     
     elsif answer == "CFH"
      foundName="Dr. Jart and Premium Beauty Balm SPF"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $39 at Sephora"
      img="https://www.sephora.com/productimages/sku/s1327915-main-zoom.jpg"
      url="https://www.sephora.com/product/premium-beauty-balm-spf-45-P285403"
      
      elsif answer == "CDI"
      foundName="Makeup Forever Matte velvet Skin foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://www.makeupforever.com/sites/default/files/styles/sku__field_image_main__full/public/sku/%5Bmufe_import%3Asku%5D/image_main/BACKSTAGEBOX_packshot_mattevelvetskin_y375_closed.jpg?itok=gUyO8PsS"
      url="https://www.sephora.com/product/matte-velvet-skin-full-coverage-foundation-P434023"
      
      elsif answer == "CEI"
      foundName="IT Cosmetics Your skin but better CC and Cream"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $38 at Sephora"
      img="https://www.itcosmetics.co.uk/dw/image/v2/AAQP_PRD/on/demandware.static/-/Sites-itc-master-catalog/default/dwe037adc1/product-images/ITC_0008/IT_CCCream_Medium_WEB.jpg?sw=565&sh=647&sm=fit"
      url="https://www.sephora.com/product/your-skin-but-better-cc-cream-spf-50-P411885"
      
      elsif answer == "CFI"
      foundName="NARS Natural Radiant Longwear Foundation"
      welcome ="Thank you for taking our quiz. <br> <b> #{foundName}</a> </b> is the foundation that will work best for you!<br>"
      descrip="#{foundName} is priced at $49 at Sephora"
      img="https://www.narscosmetics.com/on/demandware.static/-/Library-Sites-NARS-Shared-Library/default/dw27ad9951/images/pdp/module1/999NAC0000065.jpg"
      url="https://www.sephora.com/product/natural-radiant-longwear-foundation-P427301"
      
    else
      puts "Sorry, you didn't complete all of the questions in our quiz."
    end 
    @results=[welcome, foundName, descrip, img, url]
    erb :answer
  end
  
  
  
  

post '/results2' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    # puts answer
    # return answer
    
    if answer == "ADGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Iris Pink)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
    
    elsif answer == "AEGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Raspberry Sorbet)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
   elsif answer == "AFGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Cotton Candy Pink)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
    elsif answer == "ADHI"
      lipName="Bareminerals GEN NUDE liquid lipstick (Color Suggestion: Cookie)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
     elsif answer == "AEHI"
      lipName="Bareminerals GEN NUDE liquid lipstick (Color Suggestion: Honeyed Pink Peach)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
    elsif answer == "AFHI"
      lipName="Bareminerals GEN NUDE liquid lipstick (Color Suggestion: Smooch)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
    elsif answer == "ADGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Kanani)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
    elsif answer == "AEGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Watalie)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
    elsif answer == "AFGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Tanya)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
     
     elsif answer == "ADHJ"
      lipName="Bareminerals GEN NUDE Liquid Lipstick (Color Suggestion: VIP)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
    elsif answer == "AEHJ"
      lipName="Bareminerals GEN NUDE Liquid Lipstick (Color Suggestion: Naughty)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
    elsif answer == "AFHJ"
      lipName="Bareminerals GEN NUDE Liquid Lipstick (Color Suggestion: Juicy)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $19 at Sephora" 
      img="https://retreatscotland.com/wp-content/uploads/2017/05/Bare-minerals-lip-glosses.jpg"
      url="https://www.sephora.com/product/gen-nude-matte-liquid-lipcolor-P410249"
      
    elsif answer == "BDGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Linsey)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"  
    
    elsif answer == "BEGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Andrea)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
    elsif answer == "BFGI"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Leah)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"    
      
    elsif answer == "BDHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Stark Naked, light nude)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"  
      
    elsif answer == "BEHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: 1993, medium brown)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"  
      
    elsif answer == "BFHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Barfly)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"   
      
    elsif answer == "BDGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Mia)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"
      
    elsif answer == "BEGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Debbie)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"   
      
    elsif answer == "BFGJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Lauren)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"   
      
    elsif answer == "BDHJ"
      lipName="Buxom Full-On Plumping Lip Polish Gloss (Color Suggestion: Nicole)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://cdn-img-1.wanelo.com/p/909/e35/ba2/ed269f4de2b100f5fd90006/x354-q80.jpg"
      url="https://www.sephora.com/product/buxom-full-on-lip-polish-P174213"   
      
    elsif answer == "BEHJ"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: 714 - Bright Red)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"   
      
    elsif answer == "BEHJ"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Crash - Neon orange)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CDGI"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Obvi - warm nude)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
    elsif answer == "CEGI"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Goals - rosy nude)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
    elsif answer == "CFGI"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Hella - white nude)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
     elsif answer == "CDHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: 1993, medium brown)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CEHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Sheer Rapture - dusty rose)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CFHI"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Backtalk - mauve-nude pink)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CDGJ"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Fave - plum berry)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
    elsif answer == "CEGJ"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Poison - black plum)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
    elsif answer == "CFGJ"
      lipName="Tarteist Glossy Lip Paint (Color Suggestion: Slay - orchid)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $20 at Sephora" 
      img="https://www.picclickimg.com/d/l400/pict/172901426189_/Tarte-Tarteist-Glossy-Lip-Paint-020-Oz-Obvi.jpg"
      url="https://www.sephora.com/product/tarteist-trade-glossy-lip-paint-P406778?skuId=1787159&keyword=TARTE%20Tarteistâ%C2%84¢%20Glossy%20Lip%20Paint"
      
    elsif answer == "CDHJ"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Bad Blood - deep red)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the Lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CEHJ"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: Tampered - deep mauve)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
      
    elsif answer == "CFHJ"
      lipName="Urban Decay Vice Lipstick (Color Suggestion: 714 - Bright Red)"
      welcome ="Thank you for taking our quiz. <br> <b> #{lipName}</a> </b> is the lipstick that will work best for you!<br>" 
      descrip="#{lipName} is priced at $18 at Sephora" 
      img="https://www.temptalia.com/wp-content/uploads/2016/05/urbandecay_vicelipstick003_hq.jpg"
      url="https://www.sephora.com/product/vice-lipstick-P409523"
    else
      puts "Sorry, you didn't complete all of the questions in our quiz."
    end 
    @results1=[welcome, lipName, descrip, img, url]
    erb :lanswers
      
            
  end
  
  post '/results3' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    # puts answer
    # return answer
      
    if answer == "AG"
      primName="Laura Mercier Radiance Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $38 at Sephora" 
      img="https://images.bloomingdalesassets.com/is/image/BLM/products/6/optimized/1289926_fpx.tif?wid=1200&qlt=90,0&layer=comp&op_sharpen=0&resMode=sharp2&op_usm=0.7,1.0,0.5,0&fmt=jpeg"
      url="https://www.sephora.com/product/foundation-primer-radiance-P299223?skuId=1382670"  
      
    elsif answer == "AH"
      primName="Bareminerals Prime Time"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $25 at Sephora" 
      img="https://s7d3.scene7.com/is/image/BareEscentuals/80468-0?id=FdObM1&fmt=jpg&fit=constrain,1&wid=355&hei=355"
      url="https://www.sephora.com/product/prime-time-foundation-primer-P182405"   
    
    elsif answer == "AI"
      primName="BENEFIT COSMETICS The POREfessional Face Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $31 at Sephora" 
      img="https://img.benefitcosmetics.com/image/upload/f_auto,q_auto,fl_lossy/origin_files/us/en/sites/us/files/the-porefessional-value-size-hero.png"
      url="https://www.sephora.com/product/the-porefessional-face-primer-P264900"  
    
    elsif answer == "AJ"
      primName="Smashbox Photo Focus Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $36 at Sephora" 
      img="https://www.smashbox.com/media/images/products/875x773/sbx_sku_37073_875x773_0.jpg"
      url="https://www.sephora.com/product/photo-finish-foundation-primer-P9889"    
    
    elsif answer == "BG"
      primName="Too Faced Hangover Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $34 at Sephora" 
      img="https://www.sephora.com/productimages/sku/s1626043-main-zoom.jpg"
      url="https://www.sephora.com/product/hangover-replenishing-face-primer-P387589"   
    
    elsif answer == "BH"
      primName="MAKEUP FOREVER Step 1 Skin Equalizer Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $37 at Sephora" 
      img="https://www.sephora.com/productimages/sku/s1669027-main-zoom.jpg"
      url="https://www.sephora.com/product/step-1-skin-equalizer-primer-P393965" 
    
    elsif answer == "BI"
      primName="BENEFIT COSMETICS The POREfessional Face Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $31 at Sephora" 
      img="https://img.benefitcosmetics.com/image/upload/f_auto,q_auto,fl_lossy/origin_files/us/en/sites/us/files/the-porefessional-value-size-hero.png"
      url="https://www.sephora.com/product/the-porefessional-face-primer-P264900" 
      
    elsif answer == "BJ"
      primName="TOO FACED Primed & Poreless Skin Smoothing Face Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $30 at Sephora" 
      img="https://www.toofaced.com/dw/image/v2/BBWM_PRD/on/demandware.static/-/Sites-master-catalog/default/dw25653f1b/images/hi-res/70039_1.png?sw=1200&sh=1200&sm=fit"
      url="https://www.sephora.com/product/primed-poreless-skin-smoothing-face-primer-P241301"   
    
    elsif answer == "CG"
      primName="NYX PROFESSIONAL MAKEUP Studio Perfect Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $27 at Sephora" 
      img="https://clicks.co.za/medias/?context=bWFzdGVyfHByb2R1Y3QtaW1hZ2VzfDI5MzA3fGltYWdlL2pwZWd8cHJvZHVjdC1pbWFnZXMvaDc0L2hmNy85MzU1OTg3NzQ2ODQ2LmpwZ3w2NDRjZDMxNDc5YTU3Nzc2YzY5NGIwYjNiMjFlYjBmZjY0YjkwNzk3MTY2MDMxOGQwMjVmMzNkOTFmYzFmY2Rk"
      url="https://www.sephora.sg/products/nyx-studio-perfect-primer/v/clear"
      
    elsif answer == "CH"
      primName="NEUTROGENA Shine Control Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $13.99 at Ulta" 
      img="https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/05/1517436095-neutrogena-primercrop.jpg?crop=1xw:0.9983361064891847xh;center,top&resize=480:*"
      url="https://www.ulta.com/shine-control-primer?productId=xlsImpprod4480179"   
      
    elsif answer == "CI"
      primName="CATRICE Prime & Fine Smoothing Refiner"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $6.99 at Ulta" 
      img="data:image/jpeg;base64,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"
      url="https://www.ulta.com/prime-fine-smoothing-refiner?productId=xlsImpprod12831113"    
      
    elsif answer == "CJ"
      primName="E.L.F. COSMETICS Mineral Infused Face Primer"
      welcome ="Thank you for taking our quiz. <br> <b> #{primName}</a> </b> is the primer that will work best for you!<br>" 
      descrip="#{primName} is priced at $6 at Ulta" 
      img="https://lh4.googleusercontent.com/-smORhzbWYD4/U6zGQwQE4TI/AAAAAAAAAlg/bWCJtz4YXfo/s640/blogger-image--1053475521.jpg"
      url="https://www.ulta.com/mineral-infused-face-primer?productId=xlsImpprod14521169"
    
    else
      puts "Sorry, you didn't complete all of the questions in our quiz."
    end 
    @results3=[welcome, primName, descrip, img, url]
    erb :panswers  
  

post '/results4' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    # puts answer
    # return answer
      
    if answer == "ADGJ"
      skinName="Clean & Clear Acne Triple Clear Bubble Foam Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $8.49 at CVS Pharmacy" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/styles/product_image/public/product-images/bubble_foam_white_1.jpg"
      url="https://www.cleanandclear.com/acne-triple-clear-bubble-foam-cleanser"
    
    elsif answer == "BDGJ"
      skinName="Clean & Clear Daily Skincare 3 Step"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $11.89 at Target" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.target.com/p/clean-clear-174-daily-skincare-essentials-3pc/-/A-15118218?clkid=d0b9a1f1N25585d1a0e56d6fdd92bf83f&lnm=143415&afid=VigLink&ref=tgt_adv_xasd0002"
    
    elsif answer == "CDGJ"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"
    
    elsif answer == "ADGK"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"
      
    elsif answer == "ADGL"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"
      
    elsif answer == "ADHJ"
      skinName="Clean & Clear Acne Triple Clear Bubble Foam Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $8.49 at CVS Pharmacy" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/styles/product_image/public/product-images/bubble_foam_white_1.jpg"
      url="https://www.cleanandclear.com/acne-triple-clear-bubble-foam-cleanser"
      
     elsif answer == "ADHK"
      skinName="Clean & Clear Acne Triple Clear Bubble Foam Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $8.49 at CVS Pharmacy" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/styles/product_image/public/product-images/bubble_foam_white_1.jpg"
      url="https://www.cleanandclear.com/acne-triple-clear-bubble-foam-cleanser" 
    
    elsif answer == "ADHL"
      skinName="Clean & Clear Acne Triple Clear Bubble Foam Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $8.49 at CVS Pharmacy" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/styles/product_image/public/product-images/bubble_foam_white_1.jpg"
      url="https://www.cleanandclear.com/acne-triple-clear-bubble-foam-cleanser"
      
    elsif answer == "ADIJ"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
    
    elsif answer == "ADIK"
     skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
    
    elsif answer == "ADIL"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
    
    elsif answer == "AEGJ"
      skinName="Laneige Moisturizing Foam Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $23 at Sephora" 
      img="https://www.laneige.com/lst/en/laneige-pim-img/product/foam-cleanser-moisture/foam-cleanser-moisture_01.png"
      url="https://www.sephora.com/product/moisturizing-foam-cleanser-P420668"
    
    elsif answer == "AEGK"
      skinName="Mario Badescu Enzyme Cleansing Gel"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $14 at Ulta" 
      img="http://crystalis007.com/wp-content/uploads/2012/12/mario-badescu-enzyme-cleansing-gel.jpg"
      url="https://www.ulta.com/enzyme-cleansing-gel?productId=xlsImpprod6200755"
    
    elsif answer == "AEGL"
      skinName="Olay Clearly Clean Salicylic Acid Acne Treatment Scrub"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $5.49 at Olay" 
      img="https://i5.walmartimages.com/asr/7affaa95-4cda-47e4-805d-444404376428_1.61e7232560c8a7b00999242940e05dcd.jpeg"
      url="https://www.olay.com/en-us/skin-care-products/clearly-clean-salicylic-acid-acne-treatment-scrub"
    
     elsif answer == "AEHL"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
      
    elsif answer == "AEHK"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
     
    elsif answer == "AEHJ"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"  
      
    elsif answer == "AEIJ"
      skinName="Skinceutical Gentle Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Skinceuticals" 
      img="https://www.skinceuticals.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-acd-skinceuticals-master-catalog/default/dw52f73fd7/Products/3606000463943-Gentle-Cleanser-SkinCeuticals.png?sw=618&sh=1000&sm=fit&q=70"
      url="https://www.skinceuticals.com/gentle-cleanser-3606000463943.html" 
      
    elsif answer == "AEIK"
      skinName="Skinceutical Gentle Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Skinceuticals" 
      img="https://www.skinceuticals.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-acd-skinceuticals-master-catalog/default/dw52f73fd7/Products/3606000463943-Gentle-Cleanser-SkinCeuticals.png?sw=618&sh=1000&sm=fit&q=70"
      url="https://www.skinceuticals.com/gentle-cleanser-3606000463943.html" 
    
    elsif answer == "AEIL"
      skinName="Skinceutical Gentle Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Skinceuticals" 
      img="https://www.skinceuticals.com/dw/image/v2/AANG_PRD/on/demandware.static/-/Sites-acd-skinceuticals-master-catalog/default/dw52f73fd7/Products/3606000463943-Gentle-Cleanser-SkinCeuticals.png?sw=618&sh=1000&sm=fit&q=70"
      url="https://www.skinceuticals.com/gentle-cleanser-3606000463943.html"
      
    elsif answer == "AFGJ"
      skinName="Neutrogena On-The-Spot Acne Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.49 at Neutrogena" 
      img="http://www.beautybythegeeks.com/wp-content/uploads/Untitled-design-4.png"
      url="https://www.neutrogena.com/skin/skin-acne/on-the-spot-acne-treatment/6801790.html"
      
    elsif answer == "AFGK"
      skinName="Neutrogena On-The-Spot Acne Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.49 at Neutrogena" 
      img="http://www.beautybythegeeks.com/wp-content/uploads/Untitled-design-4.png"
      url="https://www.neutrogena.com/skin/skin-acne/on-the-spot-acne-treatment/6801790.html"  
      
    elsif answer == "AFGL"
      skinName="Neutrogena On-The-Spot Acne Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.49 at Neutrogena" 
      img="http://www.beautybythegeeks.com/wp-content/uploads/Untitled-design-4.png"
      url="https://www.neutrogena.com/skin/skin-acne/on-the-spot-acne-treatment/6801790.html" 
      
    elsif answer == "AFHJ"
      skinName="Neutrogena On-The-Spot Acne Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.49 at Neutrogena" 
      img="http://www.beautybythegeeks.com/wp-content/uploads/Untitled-design-4.png"
      url="https://www.neutrogena.com/skin/skin-acne/on-the-spot-acne-treatment/6801790.html"  
      
    elsif answer == "AFHK"
      skinName="Neutrogena On-The-Spot Acne Treatment"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.49 at Neutrogena" 
      img="http://www.beautybythegeeks.com/wp-content/uploads/Untitled-design-4.png"
      url="https://www.neutrogena.com/skin/skin-acne/on-the-spot-acne-treatment/6801790.html" 
      
    elsif answer == "AFHL"
      skinName="Clean & Clear Day & Night"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $11.99 at Walgreens" 
      img="https://i5.walmartimages.com/asr/17bf598f-d6fd-45ee-b693-2c0a943361e3_1.a7d60fb36c0712d4fa5fcfb7e8079339.jpeg"
      url="https://www.walgreens.com/store/c/clean-%26-clear-day/night-cleanser-2-pack/ID=prod6259116-product"   
      
    elsif answer == "BDGJ"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"  
      
    elsif answer == "BDGK"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"  
    
    elsif answer == "BDGL"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"  
      
    elsif answer == "BDHJ"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"  
    
    elsif answer == "BDHK"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"
      
    elsif answer == "BDHL"
      skinName="Clinique 3-Step Introduction Kit Skin Type 2"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $19.50 at Ulta" 
      img="https://www.clinique.com/media/export/cms/products/402x464/clq_7T6201_402x464.png"
      url="https://www.ulta.com/3-step-introduction-kit-drier-skin-type-2?productId=xlsImpprod10792049"
      
    elsif answer == "BDIJ"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"  
      
    elsif answer == "BDIK"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"    
    
    elsif answer == "BDIL"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"    
    
    elsif answer == "BEGJ"
      skinName="Mario Badescu Enzyme Cleansing Gel"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $14 at Ulta" 
      img="http://crystalis007.com/wp-content/uploads/2012/12/mario-badescu-enzyme-cleansing-gel.jpg"
      url="https://www.ulta.com/enzyme-cleansing-gel?productId=xlsImpprod6200755"
    
    elsif answer == "BEGK"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"  
    
    elsif answer == "BEGL"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"  
      
    elsif answer == "BEHJ"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
      
    elsif answer == "BEHK"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
      
    elsif answer == "BEHL"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
      
    elsif answer == "BEIJ"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"
    
    elsif answer == "BEIK"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"
      
    elsif answer == "BEIL"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224" 
      
    elsif answer == "BFGJ"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"
      
    elsif answer == "BFGK"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"   
    
    elsif answer == "BFGL"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"  
      
    elsif answer == "BFHJ"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"  
      
    elsif answer == "BFHK"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"  
      
    elsif answer == "BFIJ"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"
      
    elsif answer == "BFIK"
      skinName="Dermalogica Pure night"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $80 at Sephora" 
      img="https://www.adorebeauty.com.au/media/product/467/dermalogica-powerbright-pure-night-by-dermalogica-d68.png"
      url="hhttps://www.ulta.com/pure-night?productId=xlsImpprod11271059"  
      
    elsif answer == "BFIL"
      skinName="Origins Original Skin renewal Serum"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $41 at Sephora" 
      img="https://www.origins.com/media/export/cms/products/500x625/origins_sku_0LXH01_500x625_0.png"
      url="https://www.sephora.com/product/original-skin-renewal-serum-with-willowherb-P392523"
    
    elsif answer == "CDGJ"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
    
    elsif answer == "CDGK"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
      
    elsif answer == "CDGL"
      skinName="Dermalogica Healthy Skin Essentials"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $80 at Dermalogica." 
      img="http://www.dermalogica.co.za/media/catalog/category/system_dailyskinhealth_n_1__1.png"
      url="https://www.dermalogica.com/daily-skin-health/daily_skin_health,default,sc.html"
    
    elsif answer == "CDHJ"
      skinName="Dr. Hauschka Clarifying Face Kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at DERMSTORE." 
      img="https://media.dermstore.com/catalog/501507/800x800/31077.jpg"
      url="https://www.dermstore.com/product_Clarifying+Face+Care+Kit++Oily_31077.htm"
      
    elsif answer == "CDHK"
      skinName="Clean & Clear Night Relaxing Deep Cleansing Wash"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.29 at CVS Pharmacy." 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-night-relaxing-face-wash.png"
      url="https://www.cvs.com/shop/-/clean-clear-night-relaxing-deep-cleaning-face-wash-oil-free-8-oz-prodid-1020269" 
      
    elsif answer == "CDHL"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"
      
    elsif answer == "CDIJ"
      skinName="Kora organics daily ritual kit"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $32 at Sephora" 
      img="http://cdn.shopify.com/s/files/1/1768/8207/products/KORA_DailyRitualKit_Dry_Group_wBox_2589_RGB_1024px_CosmosO_1024x1024.png?v=1519698433"
      url="https://www.sephora.com/product/daily-ritual-kit-for-dry-skin-P424112"  
      
    elsif answer == "CDIK"
      skinName="Clean & Clear Night Relaxing Deep Cleansing Wash"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.29 at CVS Pharmacy." 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-night-relaxing-face-wash.png"
      url="https://www.cvs.com/shop/-/clean-clear-night-relaxing-deep-cleaning-face-wash-oil-free-8-oz-prodid-1020269"  
      
      elsif answer == "CDIL"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser"
      
    elsif answer == "CEGJ"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"
      
    elsif answer == "CEGK"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"
      
    elsif answer == "CEGL"
      skinName="Kiehls Ultra Facial Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $20 at Sephora" 
      img="https://www.kiehls.com/on/demandware.static/-/Sites-kiehls-master-catalog/default/dw5e6e3cdb/Kiehls_ECOMM_2000/SKIN_CARE/Cleansers_Scrubs_and_Masques/Ultra_Facial_Cleanser/Ultra_Facial_Cleanser_3605970024192_5.0fl.oz..jpg"
      url="https://www.sephora.com/product/ultra-facial-cleanser-P422007"
      
    elsif answer == "CEHJ"
      skinName="Bio dema sensibio H2O in beauty"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced between $10 and $20 on Amazon" 
      img="https://www.bioderma-uk.com/sites/default/files/styles/catalogue/public/sensibio.png?itok=vmUvc5He"
      url="http://www.bioderma.com/en/our-products/sensibio#parent=109"   
      
    elsif answer == "CEHK"
      skinName="La Roche-Posay Effaclar Serum"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $44.99 at La Roche-Posay" 
      img="https://cdn.shopify.com/s/files/1/1781/8145/products/lar2289_large.png?v=1494138064"
      url="https://www.laroche-posay.us/effaclar-serum-3337872413155.html"   
      
    elsif answer == "CEHC"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224" 
      
    elsif answer == "CEIJ"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"  
    
    elsif answer == "CEIK"
      skinName="La Roche-Posay Effaclar Serum"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $44.99 at La Roche-Posay" 
      img="https://cdn.shopify.com/s/files/1/1781/8145/products/lar2289_large.png?v=1494138064"
      url="https://www.laroche-posay.us/effaclar-serum-3337872413155.html" 
      
    elsif answer == "CEIL"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser"  
      
    elsif answer == "CFGJ"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"  
      
    elsif answer == "CFGK"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"  
      
    elsif answer == "CFGL"
      skinName="Murad Complete Acne Control"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $25 at Sephora" 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-123-routine.png"
      url="https://www.sephora.com/product/complete-acne-control-30-day-kit-P420236"  
      
    elsif answer == "CFHJ"
      skinName="Clarins Cleansing Milk"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $33 at Sephora" 
      img="https://int.clarins.com/dw/image/v2/AAFS_PRD/on/demandware.static/-/Sites-clarins-master-products/default/dw9b9e70a0/original/80006435_original_original_1.png?sw=1400&sh=1400&sfrm=jpg&q=85"
      url="https://www.sephora.com/product/cleansing-milk-with-alpine-herbs-P93224"   
      
    elsif answer == "CFHK"
      skinName="Clean & Clear Night Relaxing Deep Cleansing Wash"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $7.29 at CVS Pharmacy." 
      img="https://www.cleanandclear.com/sites/cleanandclear_us/files/product-images/720x860-night-relaxing-face-wash.png"
      url="https://www.cvs.com/shop/-/clean-clear-night-relaxing-deep-cleaning-face-wash-oil-free-8-oz-prodid-1020269"  
      
     elsif answer == "CFHL"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser" 
      
    elsif answer == "CFIJ"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser"  
      
    elsif answer == "CFIK"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser"  
      
    elsif answer == "CFIJ"
      skinName="Dermalogica Ultra Calming Cleanser"
      welcome ="Thank you for taking our quiz. <br> <b> #{skinName}</a> </b> is the skincare product that will work best for you!<br>" 
      descrip="#{skinName} is priced at $38 at Dermalogica." 
      img="https://cdn7.bigcommerce.com/s-7f87b/images/stencil/1280x1280/products/167/597/Dermalogica_UltraCalming_Cleanser_250ml__32051.1499676912.png?c=2&imbypass=on"
      url="https://www.dermalogica.com/ultracalming-cleanser/5,default,pd.html?start=1&q=ultra%20calming%20cleanser"
    else
      puts "Sorry, you didn't complete all of the questions in our quiz."
    end 
    @results4=[welcome, skinName, descrip, img, url]
    erb :sanswers
  
  

end
# end  