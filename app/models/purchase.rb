class Purchase < ApplicationRecord
  self.table_name = 'purchase'
  has_one :client, class_name: 'Client', foreign_key: 'ClientId', primary_key: 'purchaseContragent'
  has_one :purchase_status, class_name: 'PurchaseStatus', foreign_key: 'psId', primary_key: 'purchaseStatus'
end
