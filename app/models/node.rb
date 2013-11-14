require 'resolv'

class Node < ActiveRecord::Base
  attr_accessible :ip, :key, :password, :username 
  
  
  validates :ip , presence: true , format: {with: Resolv::IPv4::Regex} , uniqueness:{case_sensitive: false}

  validates :password ,presence: true, length: {minimum: 6}
end