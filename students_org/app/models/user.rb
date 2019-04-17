class User < ActiveRecord::Base
  has_one :WhoYou
  has_secure_password
validates :terms_of_service, :acceptance => true
end
