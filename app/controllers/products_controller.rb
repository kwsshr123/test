class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def show
        @product = Product.find(params[:id])       
    end
    
    def add_to_cart
        @product = Product.find(params[:id])
        if !current_cart.products.include?(@product)
          current_cart.add_product_to_cart(@product)
          flash[:notice] = "商品已经成功加入购物车"
          flash[:notice] = "已将 #{@product.title}加入购物车"
        else
          flash[:notice] = "#{@product.title} 已在购物车中"
        end
        redirect_to :back
    end
end
