class AtmdebitcardappsController < ApplicationController
  # GET /atmdebitcardapps
  # GET /atmdebitcardapps.xml
  def index
    @atmdebitcardapps = Atmdebitcardapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atmdebitcardapps }
    end
  end

  # GET /atmdebitcardapps/1
  # GET /atmdebitcardapps/1.xml
  def show
    @atmdebitcardapp = Atmdebitcardapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atmdebitcardapp }
    end
  end

  # GET /atmdebitcardapps/new
  # GET /atmdebitcardapps/new.xml
  def new
    @atmdebitcardapp = Atmdebitcardapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atmdebitcardapp }
    end
  end

  # GET /atmdebitcardapps/1/edit
  def edit
    @atmdebitcardapp = Atmdebitcardapp.find(params[:id])
  end

  # POST /atmdebitcardapps
  # POST /atmdebitcardapps.xml
  def create
    @atmdebitcardapp = Atmdebitcardapp.new(params[:atmdebitcardapp])

    respond_to do |format|
      if @atmdebitcardapp.save
        flash[:notice] = 'ATM/Debit Card Application was successfully sent to the concerned person in the Credit Union.'
		
		#send email
		Emailer.deliver_atmdebitcardapp_email(@atmdebitcardapp)
		
        format.html { redirect_to(@atmdebitcardapp) }
        format.xml  { render :xml => @atmdebitcardapp, :status => :created, :location => @atmdebitcardapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atmdebitcardapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atmdebitcardapps/1
  # PUT /atmdebitcardapps/1.xml
  def update
    @atmdebitcardapp = Atmdebitcardapp.find(params[:id])

    respond_to do |format|
      if @atmdebitcardapp.update_attributes(params[:atmdebitcardapp])
        flash[:notice] = 'Atmdebitcardapp was successfully updated.'
        format.html { redirect_to(@atmdebitcardapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atmdebitcardapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atmdebitcardapps/1
  # DELETE /atmdebitcardapps/1.xml
  def destroy
    @atmdebitcardapp = Atmdebitcardapp.find(params[:id])
    @atmdebitcardapp.destroy

    respond_to do |format|
      format.html { redirect_to(atmdebitcardapps_url) }
      format.xml  { head :ok }
    end
  end
end
