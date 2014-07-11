class Domain < ActiveRecord::Base
  validates :hostname, presence: true, uniqueness: true
  validates :origin_ip_address, presence: true
  
  belongs_to :account
end
