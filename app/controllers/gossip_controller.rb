class GossipController < ApplicationController
  
  
  def show

    @gossip = Potin.find(params[:user_entry])
    @author = @gossip.user

    puts "$" * 60
    puts @author.id
    puts "$" * 60



  end



end
