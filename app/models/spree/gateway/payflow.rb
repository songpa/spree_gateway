module Spree
	class Gateway::Payflow < Gateway
	  preference :login, :string
	  preference :password, :password
	  preference :partner, :string
	  
	  attr_accessible :preferred_login, :preferred_password, :preferred_partner

	  def provider_class
		ActiveMerchant::Billing::PayflowGateway
	  end
	end
end
