class PagesController < Spree::BaseController
  
  resource_controller
  helper :taxons
  helper :products
  
  def index
    render :layout => "spree_application"
  end
  
  def about_us
  end
  
  def services
  end
  
  def raw_resources
  end
  
  def contact_us
  end
  
  def privacy_policy
  end
  
  def return_policy
  end
  
  def refund_policy
  end
  
  def cancellation_policy
  end
  
  def delivery_shipping_policy
  end

end
