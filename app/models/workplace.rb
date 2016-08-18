class Workplace < ApplicationRecord
  self.table_name = 'workplace'
  belongs_to :client
  belongs_to :contact, foreign_key: 'wpContactID'

end
