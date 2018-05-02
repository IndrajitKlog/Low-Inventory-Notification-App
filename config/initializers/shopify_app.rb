ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "a874deb8a3baa7a004cc8ef55086fa6e"
  config.secret = "e33aed3c876e0bbb6c058837371daa75"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
