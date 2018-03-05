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
    @hosting0 = Hosting.new("0", "Landing", "100 MDL", "5 EUR")
  end  
  
private  
  
  class Hosting
   @@no_of_hosting = 0
   def initialize(id, name, mpricemdl, mpriceeur, ypricemdl, ypriceeur, hdd)
      @id = id
      @name = name
      @mpricemdl = mpricemdl
      @mpriceeur = mpriceeur
      @ypriceeur = mpriceeur
      @ypriceeur = mpriceeur
      @hdd = hdd
   end
   def name
     @name
   end
   def lprice
     @lprice
   end
   def eprice
     @eprice
   end
  end
  
end
