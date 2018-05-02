class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 250 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @low_stock = ShopifyAPI::Product.where(title: "35 Reasons Why I Love You Notebook")
    @admin_email = ShopifyAPI::Shop.current.email
    #@low_stock = ShopifyAPI::Product.all
    #@total = ShopifyAPI::Product.where(variants.barcode: "klog123"})
    #binding.pry
  end
end
