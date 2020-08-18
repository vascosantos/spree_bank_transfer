module Spree::UserDecorator
  has_many :payments, :through => :orders
end

::Spree::User.prepend(Spree::UserDecorator)