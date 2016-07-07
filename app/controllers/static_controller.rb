class StaticController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
  end
  def member
  end
  def clients
    # @clients = Client.all.order("ClientName ASC").page(params[:page])
    @clients = Client.all.order("ClientName ASC").all
  end
  def contacts
    @contacts = Contact.all.order("FamilyContact ASC, NameContact ASC, SoNameContact ASC")

  end
  def purchase
    @purchase = Purchase.includes(:client, :purchase_status).all
  end
  def history
    
  end
  def bills
    @bills = Bill.includes(:client, :bill_status).where.not( {BillStatus: 0 }).all
  end

end
