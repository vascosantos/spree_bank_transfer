module Spree::ContentControllerDecorator
  def bank_transfer
    render :layout => false
  end
end

::Spree::ContentController.prepend(Spree::ContentControllerDecorator)