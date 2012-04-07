class FlavorsController < ApplicationController
  # GET /flavors
  # GET /flavors.xml
  def index
    @flavors = Flavor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @flavors }
    end
  end

  # GET /flavors/1
  # GET /flavors/1.xml
  def show
    @flavor = Flavor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @flavor }
    end
  end

  # GET /flavors/new
  # GET /flavors/new.xml
  def new
    @flavor = Flavor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @flavor }
    end
  end

  # GET /flavors/1/edit
  def edit
    @flavor = Flavor.find(params[:id])
  end

  # POST /flavors
  # POST /flavors.xml
  def create
    @flavor = Flavor.new(params[:flavor])

    respond_to do |format|
      if @flavor.save
        format.html { redirect_to(@flavor, :notice => 'Flavor was successfully created.') }
        format.xml  { render :xml => @flavor, :status => :created, :location => @flavor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @flavor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /flavors/1
  # PUT /flavors/1.xml
  def update
    @flavor = Flavor.find(params[:id])

    respond_to do |format|
      if @flavor.update_attributes(params[:flavor])
        format.html { redirect_to(@flavor, :notice => 'Flavor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @flavor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /flavors/1
  # DELETE /flavors/1.xml
  def destroy
    @flavor = Flavor.find(params[:id])
    @flavor.destroy

    respond_to do |format|
      format.html { redirect_to(flavors_url) }
      format.xml  { head :ok }
    end
  end
end
