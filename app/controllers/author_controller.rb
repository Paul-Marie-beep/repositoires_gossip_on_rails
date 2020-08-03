class AuthorController < ApplicationController
  def show

    @author = User.find(params[:user_entry])

  end
end
