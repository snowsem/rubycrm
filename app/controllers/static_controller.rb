class StaticController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
  end
  def member
  end

end
