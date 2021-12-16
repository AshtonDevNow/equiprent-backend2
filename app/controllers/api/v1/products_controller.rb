class Api::V1::ProductsController < Api::V1::BaseController
  before_action :set_product, only: [ :show ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  # def new
  #   @product = Product.new
  # end


  private

  def set_product
    @product = Product.find(params[:id])
  end
end