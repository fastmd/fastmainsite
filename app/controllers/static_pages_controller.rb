class StaticPagesController < ApplicationController
  
  def home
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def hosting
    @hosting = Array.new
    @hosting[0] = Hosting.new("0", "LANDING", "The best offer", nil, "100 MDL", "5", "400 Mb")
    @hosting[1] = Hosting.new("1", "MICRO", "20 MDL", "1", "200 MDL", "10", "1 Gb", nil, "1")
    @hosting[2] = Hosting.new("2", "MINI", "40 MDL", "2", "280 MDL", "14", "3 Gb")
    @hosting[3] = Hosting.new("3", "STANDARD", "60 MDL", "3", "400 MDL", "20", "6 Gb")
    @hosting[4] = Hosting.new("4", "BUSINESS SIMPLE", "80 MDL", "4", "600 MDL", "30", "10 Gb")
    @hosting[5] = Hosting.new("5", "BUSINESS LARGE", "120 MDL", "6", "1000 MDL", "50","20 Gb")
    @hosting[6] = Hosting.new("6", "BUSINESS EXTRA", "160 MDL", "8", "1200 MDL", "60","40 Gb", "+ 10 Gb: 1€ per month / 10€ per year")
  end  
  
private  
  
  class Hosting
   @@no_of_hosting = 0
   def initialize(id, name, mprice_mdl, mprice_eur, yprice_mdl, yprice_eur, hdd, comment = nil, flag = nil)
      @id = id
      @name = name
      @mprice_mdl = mprice_mdl
      @mprice_eur = mprice_eur
      @yprice_mdl = yprice_mdl
      @yprice_eur = yprice_eur
      @hdd = hdd
      @comment = comment
      @flag = flag
   end
   def name
     @name
   end
   def mprice_mdl
     @mprice_mdl
   end
   def mprice_eur
     @mprice_eur
   end
   def yprice_mdl
     @yprice_mdl
   end
   def yprice_eur
     @yprice_eur
   end
   def hdd
     @hdd
   end
   def comment
     @comment
   end
   def flag
     @flag
   end   
  end
  
end
