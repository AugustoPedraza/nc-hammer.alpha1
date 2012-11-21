class HomeController < ApplicationController
  def index
    if current_user
      render 'authenticate'
    else
      render 'no_authenticate'
    end
  end
end