class Admin::ProductsController < Admin::AdminController

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(params[:product])
      flash[:success] = "You have successfully updated #{@product.name}"
      redirect_to admin_products_path
    else
      flash[:error] = "There was an error trying to update #{@product.name}"
      render :action => 'edit'
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    #puts params[:price]

    if @product.save
      flash[:success] = "You have successfully created #{@product.name}"
      redirect_to admin_products_path
    else
      flash[:error] = "There was an error creating the product"
      render :action => 'new'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:success] = "That product has been successfully deleted"
    redirect_to admin_products_path
  end

end
