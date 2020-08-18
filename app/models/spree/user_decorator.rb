module Spree::UserDecorator
  def self.prepended(base)
    base.has_many :payments, :through => :orders
  end
end

::Spree::User.prepend(Spree::UserDecorator)