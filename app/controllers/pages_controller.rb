class PagesController < ApplicationController
  before_action :set_works

  def home
  end

  def resume
  end

  def mission
  end

  private
    def set_works
      @works = Work.all
    end
end
