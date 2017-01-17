class PagesController < ApplicationController
  before_action :set_works
  before_action :set_session_token

  def home
  end

  private
    def set_session_token
      session[:auth_token] = params[:auth_token] unless session[:auth_token]
    end
end
