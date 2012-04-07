class FeatureFlavorsController < ApplicationController
  # GET /feature_flavors
  # GET /feature_flavors.xml
  def index
    @feature_flavors = FeatureFlavor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feature_flavors }
    end
  end

  # GET /feature_flavors/1
  # GET /feature_flavors/1.xml
  def show
    @feature_flavor = FeatureFlavor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feature_flavor }
    end
  end

  # GET /feature_flavors/new
  # GET /feature_flavors/new.xml
  def new
    @feature_flavor = FeatureFlavor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feature_flavor }
    end
  end

  # GET /feature_flavors/1/edit
  def edit
    @feature_flavor = FeatureFlavor.find(params[:id])
  end

  # POST /feature_flavors
  # POST /feature_flavors.xml
  def create
    @feature_flavor = FeatureFlavor.new(params[:feature_flavor])

    respond_to do |format|
      if @feature_flavor.save
        format.html { redirect_to(@feature_flavor, :notice => 'Feature flavor was successfully created.') }
        format.xml  { render :xml => @feature_flavor, :status => :created, :location => @feature_flavor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feature_flavor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feature_flavors/1
  # PUT /feature_flavors/1.xml
  def update
    @feature_flavor = FeatureFlavor.find(params[:id])

    respond_to do |format|
      if @feature_flavor.update_attributes(params[:feature_flavor])
        format.html { redirect_to(@feature_flavor, :notice => 'Feature flavor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feature_flavor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_flavors/1
  # DELETE /feature_flavors/1.xml
  def destroy
    @feature_flavor = FeatureFlavor.find(params[:id])
    @feature_flavor.destroy

    respond_to do |format|
      format.html { redirect_to(feature_flavors_url) }
      format.xml  { head :ok }
    end
  end
end
