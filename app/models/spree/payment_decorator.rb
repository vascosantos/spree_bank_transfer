module Spree::PaymentDecorator
  attr_accessor :validate_bank_details

  def self.prepended(base)
    base.validates :bank_name, :account_no, :transaction_reference_no, :deposited_on, :presence => true, :if => :validate_bank_details
    base.scope :from_bank_transfer, -> { joins(:payment_method).where(:spree_payment_methods => { :type => 'Spree::PaymentMethod::BankTransfer' }) }
  end

  def details_submitted?
    transaction_reference_no?
  end
end

::Spree::Payment.prepend(Spree::PaymentDecorator)