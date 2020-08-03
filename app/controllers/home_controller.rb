class HomeController < ApplicationController
 
 
 
 
  def show

    @all_potins = Potin.all


  end
end
