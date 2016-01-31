class PagesController < ApplicationController
  before_action :set_works
  before_action :set_session_token

  def home
  end

  def resume
  end

  def mission
  end

  def resume
  end

  private
    def set_works
      @works = Work.all
    end

    def set_session_token
      session[:auth_token] = params[:auth_token] unless session[:auth_token]
    end
end
