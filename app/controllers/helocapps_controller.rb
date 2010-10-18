class HelocappsController < ApplicationController
  # GET /helocapps
  # GET /helocapps.xml
  def index
    @helocapps = Helocapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helocapps }
    end
  end

  # GET /helocapps/1
  # GET /helocapps/1.xml
  def show
    @helocapp = Helocapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helocapp }
    end
  end

  # GET /helocapps/new
  # GET /helocapps/new.xml
  def new
    @helocapp = Helocapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @helocapp }
    end
  end

  # GET /helocapps/1/edit
  def edit
    @helocapp = Helocapp.find(params[:id])
  end

  # POST /helocapps
  # POST /helocapps.xml
  def create
    @helocapp = Helocapp.new(params[:helocapp])

    respond_to do |format|
      if @helocapp.save
        flash[:notice] = 'HELOC Application was successfully sent.'
		
		#send email
		Emailer.deliver_helocapp_email(@helocapp)
		
        format.html { redirect_to(@helocapp) }
        format.xml  { render :xml => @helocapp, :status => :created, :location => @helocapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @helocapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helocapps/1
  # PUT /helocapps/1.xml
  def update
    @helocapp = Helocapp.find(params[:id])

    respond_to do |format|
      if @helocapp.update_attributes(params[:helocapp])
        flash[:notice] = 'Helocapp was successfully updated.'
        format.html { redirect_to(@helocapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @helocapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helocapps/1
  # DELETE /helocapps/1.xml
  def destroy
    @helocapp = Helocapp.find(params[:id])
    @helocapp.destroy

    respond_to do |format|
      format.html { redirect_to(helocapps_url) }
      format.xml  { head :ok }
    end
  end
end
