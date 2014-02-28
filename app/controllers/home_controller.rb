class HomeController < ApplicationController
  def index
      p "user_signed_in?: "
      p user_signed_in?

      p "current_user: "
      p current_user

      p "user_session: "
      if !user_session.nil?
        user_session[:fuck] ||= 0
        user_session[:fuck] += 1
      end
      p user_session
  end
end
