module Spree
	class Gateway::Payflow < Gateway
	  preference :login, :string
	  preference :password, :password
	  preference :partner, :string
	  
	  attr_accessible :login, :password, :partner

	  def provider_class
		ActiveMerchant::Billing::PayflowGateway
	  end
	end
end
