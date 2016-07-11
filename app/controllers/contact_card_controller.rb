class ContactCardController < ApplicationController
  def index
    @contact = Contact.includes(calls: [:call_status, :contact]).find(params[:id])
  end
end
