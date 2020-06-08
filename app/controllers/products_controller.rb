class ProductsController < ApplicationController
  before_action :set_category, only: [:new, :create]

  def index
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def create
    @product = Product.new(product_params)
    # @image = Image.create(image_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  def product_params
    params.require(:product).permit(
      :name,
      :introduction,
      :price,
      :category_id,
      :brand_id,
      :shipping_region_id,
      :shipping_payer_id,
      :preparation_term_id,
      :product_condition_id,
      image: []
    )
  end


  def set_category
    @category_parent_array = Category.where(ancestry: nil).limit(13)
  end


end
