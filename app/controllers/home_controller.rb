class HomeController < ShopifyApp::AuthenticatedController
  def index
  	#NotificationMailer.welcome_email
    @products = ShopifyAPI::Product.find(:all, params: { limit: 250 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @low_stock = ShopifyAPI::Product.where(title: "35 Reasons Why I Love You Notebook")
    @admin_email = ShopifyAPI::Shop.current.email
    @domain = ShopifyAPI::Shop.current.domain
    #@low_stock = ShopifyAPI::Product.all
    #@total = ShopifyAPI::Product.where(variants.barcode: "klog123"})
    #binding.pry
    NotificationMailer.stock_status(@products, @admin_email, @domain).deliver!
  end
end
