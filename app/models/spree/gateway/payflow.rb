module Spree
	class Gateway::Payflow < Gateway
	  preference :preferred_login, :string
	  preference :preferred_password, :password
	  preference :preferred_partner, :string
	  
	  attr_accessible :preferred_login, :preferred_password, :preferred_partner

	  def provider_class
		ActiveMerchant::Billing::PayflowGateway
	  end
	end
end
