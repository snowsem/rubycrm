class StaticController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index

  end
  def member

  end

end