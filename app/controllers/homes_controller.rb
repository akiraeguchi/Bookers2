class HomesController < ApplicationController
  def top
    if user_signed_in?
      @user = current_user.id
    else
    end
  end

  def about
  end

end
