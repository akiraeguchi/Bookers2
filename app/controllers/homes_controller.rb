class HomesController < ApplicationController
  def top
    @user = current_user.id
  end

  def about
  end

end
