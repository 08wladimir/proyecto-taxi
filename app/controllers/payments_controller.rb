class PaymentsController < ApplicationController
  
  include PayPal::SDK::REST
  
  def create
    
    payment = Payment.new({
      intent: "sale",
      payer:{
        payment_method: "paypal"
      },
      transactions: [
        {
          item_list:{
            items: [{name: "Demo", sku: :item, price: (23), currency: "USD", quantity: 1}]
          },
          amount: {
            total: (23),
            currency: "USD"
          },
          descipcion: "Pago Del Viaje"
        }
      ],
      redirect_urls: {
        return_url: "/welcome/controlpanel",
        cancel_url: "/welcome/index"
      }
    })
    
    if payment.create
      redirect_to payment.links.find{|v| v.method == "REDIRECT" }.href
    else
      raise payment.error.to_yaml
    end
    
  end
end


