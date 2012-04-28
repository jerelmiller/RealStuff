class Admin::FlavorsController < Admin::AdminController
  def index
    @products = Product.all
    @flavors_count = Flavor.all.count
  end

  def edit
    @flavor = Flavor.find(params[:id])
  end

  def new
    @flavor = Flavor.new
  end

  def update
    @flavor = Flavor.find(params[:id])

    if @flavor.update_attributes(params[:flavor])
      flash[:success] = "You have successfully updated #{@flavor}"
      redirect_to admin_flavors_path
    else
      flash[:error] = "There was a problem updating #{@flavor}"
      render :action => 'edit'
    end
  end

  def create
    @flavor = Flavor.new(params[:flavor])

    if @flavor.save
      flash[:success] = "You have successfully created #{@flavor.name}"
      redirect_to admin_flavors_path
    else
      flash[:error] = 'There was a problem creating that flavor'
      render :action => 'new'
    end
  end

  def destroy
    @flavor = Flavor.find(params[:id])

    @flavor.destroy

    flash[:success] = "Flavor has been successfully deleted"
    redirect_to admin_flavors_path
  end

end
