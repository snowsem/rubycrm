class ClientCardController < ApplicationController
  before_action :authenticate_user!, :except => []
  before_action :get_id, only: [:index]
  def index
  end
  def get_id
    #@client = Client.includes(calls: [:call_status, :contact]).find(params[:id])
    @client = Client.includes(:bills => [:bill_status]).find(params[:id])
    @calls = Call.includes(:call_status, :contact).where(
        'CallContragent = ? OR CallContact IN (?)',
        params[:id],
        Contact.select(:IDContact).where(:IDContragent=> params[:id]))

  end

end
