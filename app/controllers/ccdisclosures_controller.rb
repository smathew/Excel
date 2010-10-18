class CcdisclosuresController < ApplicationController
  # GET /ccdisclosures
  # GET /ccdisclosures.xml
  def index
    @ccdisclosures = Ccdisclosure.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ccdisclosures }
    end
  end

  # GET /ccdisclosures/1
  # GET /ccdisclosures/1.xml
  def show
    @ccdisclosure = Ccdisclosure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ccdisclosure }
    end
  end

  # GET /ccdisclosures/new
  # GET /ccdisclosures/new.xml
  def new
    @ccdisclosure = Ccdisclosure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ccdisclosure }
    end
  end

  # GET /ccdisclosures/1/edit
  def edit
    @ccdisclosure = Ccdisclosure.find(params[:id])
  end

  # POST /ccdisclosures
  # POST /ccdisclosures.xml
  def create
    @ccdisclosure = Ccdisclosure.new(params[:ccdisclosure])

    respond_to do |format|
      if @ccdisclosure.save
        flash[:notice] = 'Ccdisclosure was successfully created.'
        format.html { redirect_to(new_visaapp_path) }
        format.xml  { render :xml => @ccdisclosure, :status => :created, :location => @ccdisclosure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ccdisclosure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ccdisclosures/1
  # PUT /ccdisclosures/1.xml
  def update
    @ccdisclosure = Ccdisclosure.find(params[:id])

    respond_to do |format|
      if @ccdisclosure.update_attributes(params[:ccdisclosure])
        flash[:notice] = 'Ccdisclosure was successfully updated.'
        format.html { redirect_to(@ccdisclosure) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ccdisclosure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ccdisclosures/1
  # DELETE /ccdisclosures/1.xml
  def destroy
    @ccdisclosure = Ccdisclosure.find(params[:id])
    @ccdisclosure.destroy

    respond_to do |format|
      format.html { redirect_to(ccdisclosures_url) }
      format.xml  { head :ok }
    end
  end
end
