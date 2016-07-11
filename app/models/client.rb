class Client < ApplicationRecord
  self.table_name = 'clients'
  self.primary_key = 'ClientId'
  paginates_per 100
  has_one :client_property, :class_name => 'ClientProperty', primary_key: 'ClientProperty', foreign_key: 'ClientPropertyId'
  has_one :client_type, class_name: 'ClientType', primary_key: 'ClientType', foreign_key: 'ClientTypeId'
  has_one :client_vid, class_name: 'ClientVid', primary_key: 'ClientVid', foreign_key: 'ClientVidId'

  has_many :contacts, class_name: 'Contact', primary_key: 'ClientId', foreign_key: 'IDContragent'

  has_many :telephones,-> { where stat: 2 }, class_name: 'Telephone', primary_key: 'ClientId', foreign_key: 'IDEmpl'
  has_many :emails,-> { where stat: 2 }, class_name: 'Email', primary_key: 'ClientId', foreign_key: 'IDEmplEmail'
  has_many :links,-> { where stat: 2 }, class_name: 'Link', primary_key: 'ClientId', foreign_key: 'IDEmplLink'

  has_many :addresses, class_name: 'Address', primary_key: 'ClientId', foreign_key: 'client_address'

  has_many :bills,->{where arel_table[:BillStatus].not_eq(0)}, :class_name => 'Bill', :foreign_key => 'BillContragentId', primary_key: 'ClientId'
  has_many :purchases, class_name: 'Purchase', primary_key: 'ClientId', foreign_key: 'purchaseContragent'
  has_many :calls, class_name: 'Call', primary_key: 'ClientId',foreign_key: 'CallContragent', through: :contacts
  

end
