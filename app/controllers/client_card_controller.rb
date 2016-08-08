class ClientCardController < ApplicationController
  before_action :authenticate_user!, :except => []
  before_action :get_id, only: [:index]
  def index
  end
  def get_id

  end

end
