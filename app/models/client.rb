class Client < ApplicationRecord
  self.table_name = 'clients'

  has_many :bills, :class_name => 'Bill', :foreign_key => 'ClientId', primary_key: 'BillId'
end
