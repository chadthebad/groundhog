class User < ActiveRecord::Base
  has_many :albums

  attr_accessible :name, :password
end
