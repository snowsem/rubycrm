class StaticController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
  end
  def member
  end
  def clients
    # @clients = Client.all.order("ClientName ASC").page(params[:page])
    @clients = Client.all.order("ClientName ASC").page params[:page]
  end
  def new_client
    render :layout => false
    @client = Client.new

  end
  def create_client
    @client = Client.new
    
  end

  def contacts
    @contacts = Contact.all.order("FamilyContact ASC, NameContact ASC, SoNameContact ASC")

  end
  def new_contact
    render :layout => false
    @client = Contact.new

  end
  def create_contact
    @client = Contact.new

  end
  def purchase
    @purchase = Purchase.includes(:client, :purchase_status).all
  end
  def history
    n = Time.now
    today = Time.gm(n.year, n.month, n.day)
    lastday = Time.gm(n.year, n.month, n.day-1)
    @all_history = Call.includes(:client, :call_status, :contact)
    @today_history = Call.includes(:client, :call_status, :contact).where(CallDate: today.strftime("%Y-%m-%d"))
    @lastday_history = Call.includes(:client, :call_status, :contact).where(CallDate: lastday.strftime("%Y-%m-%d"))


    
  end
  def bills
    @bills = Bill.includes(:client, :bill_status).where.not( {BillStatus: 0 }).all
  end

end
