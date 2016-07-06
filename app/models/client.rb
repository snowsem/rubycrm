class Client < ApplicationRecord
  self.table_name = 'clients'
  paginates_per 150

  has_many :bills, :class_name => 'Bill', :foreign_key => 'ClientId', primary_key: 'BillId'
end
