class StaticController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
  end
  def member
  end
  def clients
    @clients = Client.all
  end
  def contacts

  end
  def purchase

  end
  def history
    
  end

end
