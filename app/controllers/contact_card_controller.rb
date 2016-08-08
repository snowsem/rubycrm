class ContactCardController < ApplicationController
  before_action :authenticate_user!, :except => []
  def index
    @contact = Contact.includes(calls: [:call_status, :contact]).find(params[:id])
  end
end
