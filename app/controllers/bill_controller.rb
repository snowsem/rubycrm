class BillController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
    @bills = Bill.includes(:client, :bill_status).all

  end
end
