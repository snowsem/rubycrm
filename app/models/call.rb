class Call < ApplicationRecord
  has_one :call_status, class_name: 'CallStatus', primary_key: 'CallType',foreign_key: 'callStatusId'
  has_one :contact, class_name: 'Contact', primary_key: 'CallContact', foreign_key: 'IDContact'
  has_one :client, class_name: 'Client', primary_key: 'CallContragent', foreign_key: 'ClientId'




end
