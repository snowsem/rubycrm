class ClientCardController < ApplicationController
  before_action :get_id, only: [:index]
  def index
  end
  def get_id
    @client = Client.includes(calls: [:call_status, :contact]).find(params[:id])
  end

end
