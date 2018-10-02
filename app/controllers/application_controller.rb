class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  
  def index
    # render html: "Welcome to <%= ENV['APPLICATION_NAME'] %>"
  end
end
