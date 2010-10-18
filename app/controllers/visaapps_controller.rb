class VisaappsController < ApplicationController
  # GET /visaapps
  # GET /visaapps.xml
  def index
    @visaapps = Visaapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @visaapps }
    end
  end

  # GET /visaapps/1
  # GET /visaapps/1.xml
  def show
    @visaapp = Visaapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @visaapp }
    end
  end

  # GET /visaapps/new
  # GET /visaapps/new.xml
  def new
    @visaapp = Visaapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @visaapp }
    end
  end

  # GET /visaapps/1/edit
  def edit
    @visaapp = Visaapp.find(params[:id])
  end

  # POST /visaapps
  # POST /visaapps.xml
  def create
    @visaapp = Visaapp.new(params[:visaapp])

    respond_to do |format|
      if @visaapp.save
		
        flash[:notice] = 'Visa Card application has been successfully submitted to the Credit Union.'
		#send email
		Emailer.deliver_visaapp_email(@visaapp)
        format.html { redirect_to(@visaapp) }
        format.xml  { render :xml => @visaapp, :status => :created, :location => @visaapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @visaapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /visaapps/1
  # PUT /visaapps/1.xml
  def update
    @visaapp = Visaapp.find(params[:id])

    respond_to do |format|
      if @visaapp.update_attributes(params[:visaapp])
        flash[:notice] = 'Visaapp was successfully updated.'
        format.html { redirect_to(@visaapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @visaapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /visaapps/1
  # DELETE /visaapps/1.xml
  def destroy
    @visaapp = Visaapp.find(params[:id])
    @visaapp.destroy

    respond_to do |format|
      format.html { redirect_to(visaapps_url) }
      format.xml  { head :ok }
    end
  end
end
