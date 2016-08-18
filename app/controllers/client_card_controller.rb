class ClientCardController < ApplicationController
  before_action :authenticate_user!, :except => []
  before_action :get_id, only: [:index]
  def index
  end

  def get_id
    @client = Client.includes(:purchases =>[:purchase_status], :bills => [:bill_status] ).find(params[:id])
    @calls = Call.includes(:call_status, :contact).where(
        'CallContragent = ? OR CallContact IN (?)',
        params[:id],
        Workplace.select(:wpContactId).where(:wpClientId=> params[:id]))
  end


end
