class Bill < ApplicationRecord
  self.table_name = 'bills'
  has_one :client, class_name: 'Client', foreign_key: 'ClientId', primary_key: 'BillContragentId'
  has_one :bill_status, class_name: 'BillStatus', foreign_key: 'BillStatusId', primary_key: 'BillStatus'

end
