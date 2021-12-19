class Api::V1::ProductsController < Api::V1::BaseController
  before_action :set_product, only: [ :show ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(permitted_params)
    @product.user = current_user
    @product.category = Category.find_by(name: "Bikes")
    @product.save
  end

  # def create
  #   @product = Product.new(product_params)
  #   if @product.save
  #     render :show, status: :created
  #   else
  #     render_error
  #   end
  # end

  # def new
  #   @product = Product.new
  # end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def permitted_params
    params.require(:product).permit(:name, :description, :price)
  end
end
