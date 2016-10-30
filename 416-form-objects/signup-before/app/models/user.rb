class User < ActiveRecord::Base
  has_secure_password

  before_create :generate_token

  has_one :profile
end
