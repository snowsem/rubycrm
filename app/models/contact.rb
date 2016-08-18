class Contact < ApplicationRecord
  self.table_name = 'contacts'
  self.primary_key = 'IDContact'
  has_many :workplaces, :class_name => 'Workplace', primary_key: 'IDContact', foreign_key: 'wpContactId'

  has_many :telephones,->{where stat: 1}, class_name: 'Telephone', primary_key: 'IDContact', foreign_key: 'IDEmpl'
  has_many :emails,-> { where stat: 1 }, class_name: 'Email', primary_key: 'IDContact', foreign_key: 'IDEmplEmail'
  has_many :links,-> { where stat: 1 }, class_name: 'Link', primary_key: 'IDContact', foreign_key: 'IDEmplLink'

  has_one :client, class_name: 'Client',  foreign_key: 'ClientId',  through: :workplaces
  has_many :calls, class_name: 'Call', primary_key: 'IDContact',foreign_key: 'CallContact'
end
