class ContactCardController < ApplicationController
  def index
    @contact = Contact.find(params[:id])
  end
end
