class ClientCardController < ApplicationController
  before_action :get_id, only: [:index]
  def index
  end
  def get_id
    @client = Client.find(params[:id])
  end

end
