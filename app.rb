require 'sinatra'

get '/' do #ALT-3 = when you go here, do this
  erb :landing
end

#In a sinatra application, all CSS/images should be put in a 'public' folder

post '/' do #sending variables/information to the server - same method as in 'form'
  
  # debug (create error)
  #raise params.inspect

  @name = params[:user_name]
  @day  = params[:user_day].to_i # to_i converts the string "5" to the integer 5 
  @month = params[:user_month]
  #@date = params[:user_date]


# #  if @month == "june" || @month == "july"
#     #output = "Hello #{name.capitalize}. Here's your drink."
#     @sign_name = "Cancer"
#   else
#     #output = "This bar isn't the place for you, #{name.capitalize}. You're too young."
#     @sign_name = "Capricorn"
#   end
    
  case @month
    when "january"
      if @day < 20
        @sign_name = "Capricorn"
        @sign_image = "http://alzheimerscareresourcecenter.com/wp-content/uploads/2013/12/Wednesday-Workshop-Self-Care-Zodiac-December-Capricorn.png"
      else
        @sign_name = "Aquarius"
        @sign_image = "http://museemagazine.com/wp-content/uploads/2013/02/aquarius.png"
      end
    when "february"
      if @day < 20
        @sign_name = "Aquarius"
        @sign_image = "http://museemagazine.com/wp-content/uploads/2013/02/aquarius.png"
      else
        @sign_name = "Pisces"
        @sign_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr34tZap0QbLk6LhMzZpmmPq9BBtez_90p0AuOi6c-srIE3QIfmw"
      end
    when "march"
      if @day < 20
        @sign_name = "Pisces"
        @sign_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr34tZap0QbLk6LhMzZpmmPq9BBtez_90p0AuOi6c-srIE3QIfmw"
      else
        @sign_name = "Aries"
        @sign_image = "http://chaoticsoulzzz.files.wordpress.com/2011/09/ar2.jpg"
      end
    when "april"
      if @day < 21
        @sign_name = "Aries"
        @sign_image = "http://chaoticsoulzzz.files.wordpress.com/2011/09/ar2.jpg"
      else
        @sign_name = "Taurus"
        @sign_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLP1Ah6-P8Po2yt7oBQowvKLgcSMPDUKjHbW32NXHlNErK4kheFQ"
      end
    when "may"
      if @day < 22
        @sign_name = "Taurus"
        @sign_image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLP1Ah6-P8Po2yt7oBQowvKLgcSMPDUKjHbW32NXHlNErK4kheFQ"
      else
        @sign_name = "Gemini"
        @sign_image = "http://www.albinoblacksheep.com/horoscope/256/gemini.png"
      end
    when "june"
      if @day < 22
        @sign_name = "Gemini"
        @sign_image = "http://www.albinoblacksheep.com/horoscope/256/gemini.png"
      else
        @sign_name = "Cancer"
        @sign_image = "http://www.kayastha.org/kayastha/wp-content/uploads/2010/12/cancer_horoscope.png"
      end
    when "july"
      if @day < 23
        @sign_name = "Cancer"
        @sign_image = "http://www.kayastha.org/kayastha/wp-content/uploads/2010/12/cancer_horoscope.png"
      else
        @sign_name = "Leo"
        @sign_image = "http://cdnimages.ganeshaspeaks.com/GS-V4/images/sunsign-images/leo-horoscope.png"
      end
    when "august"
      if @day < 23
        @sign_name = "Leo"
        @sign_image = "http://cdnimages.ganeshaspeaks.com/GS-V4/images/sunsign-images/leo-horoscope.png"
      else
        @sign_name = "Virgo"
        @sign_image = "http://www.stampettes.com/stamp-images/zodiac_virgo-yellow.png"
      end
    when "september"
      if @day < 24
        @sign_name = "Virgo"
        @sign_image = "http://www.stampettes.com/stamp-images/zodiac_virgo-yellow.png"
      else
        @sign_name = "Libra"
        @sign_image = "http://fc07.deviantart.net/fs70/i/2013/002/9/a/libra_pony_is_best_horoscope_pony_by_mrlolcats17-d5q899k.png"
      end
    when "october"
      if @day < 24
        @sign_name = "Libra"
        @sign_image = "http://fc07.deviantart.net/fs70/i/2013/002/9/a/libra_pony_is_best_horoscope_pony_by_mrlolcats17-d5q899k.png"
      else
        @sign_name = "Scorpio"
        @sign_image = "https://www.arabiaweddings.com/sites/default/files/tips/2012/10/24/scorpio_horoscope.png"
      end
    when "november"
      if @day < 23
        @sign_name = "Scorpio"
        @sign_image = "https://www.arabiaweddings.com/sites/default/files/tips/2012/10/24/scorpio_horoscope.png"
      else
        @sign_name = "Sagittarius"
        @sign_image = "http://assets.astroved.com/newsletter/blog/saggitarius-horoscope-2012.png"
      end
    when "december"
      if @day < 22
        @sign_name = "Sagittarius"
        @sign_image = "http://assets.astroved.com/newsletter/blog/saggitarius-horoscope-2012.png"

      else
        @sign_name = "Capricorn"
        @sign_image = "http://alzheimerscareresourcecenter.com/wp-content/uploads/2013/12/Wednesday-Workshop-Self-Care-Zodiac-December-Capricorn.png"
      end
    end

    erb :base_sign

end

# get '/' do
#   erb :form
# end

# post '/' do
#   @name = params[:user_name]
#   @age  = params[:user_age].to_i

#   if @age >= 18
#     erb :drink
#   else
#     erb :no_drink
#   end
# end