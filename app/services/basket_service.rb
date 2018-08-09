class BasketService
  class << self
    def update_basket(basket_params)
      basket = Basket.find_or_create_by(user_uuid: basket_params['user_uuid'])
      return basket if Product.find_by(reference: basket_params['product_ref']).nil?

      p_ref = basket_params['product_ref']
      basket.products[p_ref] = (basket.products[p_ref].nil? ? 0 : basket.products[p_ref]) + basket_params['add']
      basket.products.delete(p_ref) if basket.products[p_ref].negative?
      basket.save

      basket
    end

    def products_from_basket(basket)
      return [] if basket.nil?

      products_refs = []
      result = []

      basket.products.each { |k, _| products_refs << k }
      db_products = Product.where(reference: products_refs)
      basket.products.each do |k, v|
        result << {
          quantity: v,
          product: db_products.where(reference: k).first
        }
      end

      result
    end
  end
end
