class ApplicationController < ActionController::Base
  def first_user
    user.first
  end
end
