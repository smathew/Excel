class ShareappsController < ApplicationController
  # GET /shareapps
  # GET /shareapps.xml
  def index
    @shareapps = Shareapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shareapps }
    end
  end

  # GET /shareapps/1
  # GET /shareapps/1.xml
  def show
    @shareapp = Shareapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shareapp }
    end
  end

  # GET /shareapps/new
  # GET /shareapps/new.xml
  def new
    @shareapp = Shareapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shareapp }
    end
  end

  # GET /shareapps/1/edit
  def edit
    @shareapp = Shareapp.find(params[:id])
  end

  # POST /shareapps
  # POST /shareapps.xml
  def create
    @shareapp = Shareapp.new(params[:shareapp])

    respond_to do |format|
      if @shareapp.save
        flash[:notice] = 'Your Share Application has been submitted.'
		#send email
		Emailer.deliver_shareapp_email(@shareapp)
        format.html { redirect_to(@shareapp) }
        format.xml  { render :xml => @shareapp, :status => :created, :location => @shareapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shareapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shareapps/1
  # PUT /shareapps/1.xml
  def update
    @shareapp = Shareapp.find(params[:id])

    respond_to do |format|
      if @shareapp.update_attributes(params[:shareapp])
        flash[:notice] = 'Shareapp was successfully updated.'
        format.html { redirect_to(@shareapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shareapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shareapps/1
  # DELETE /shareapps/1.xml
  def destroy
    @shareapp = Shareapp.find(params[:id])
    @shareapp.destroy

    respond_to do |format|
      format.html { redirect_to(shareapps_url) }
      format.xml  { head :ok }
    end
  end
end
