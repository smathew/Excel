class SecmorappsController < ApplicationController
  # GET /secmorapps
  # GET /secmorapps.xml
  def index
    @secmorapps = Secmorapp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secmorapps }
    end
  end

  # GET /secmorapps/1
  # GET /secmorapps/1.xml
  def show
    @secmorapp = Secmorapp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @secmorapp }
    end
  end

  # GET /secmorapps/new
  # GET /secmorapps/new.xml
  def new
    @secmorapp = Secmorapp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @secmorapp }
    end
  end

  # GET /secmorapps/1/edit
  def edit
    @secmorapp = Secmorapp.find(params[:id])
  end

  # POST /secmorapps
  # POST /secmorapps.xml
  def create
    @secmorapp = Secmorapp.new(params[:secmorapp])

    respond_to do |format|
      if @secmorapp.save
        flash[:notice] = 'Fixed Rate Second Mortgage Application has been successfully sent to the Credit Union.'
		#send email
		Emailer.deliver_secmorapp_email(@secmorapp)
        format.html { redirect_to(@secmorapp) }
        format.xml  { render :xml => @secmorapp, :status => :created, :location => @secmorapp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @secmorapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secmorapps/1
  # PUT /secmorapps/1.xml
  def update
    @secmorapp = Secmorapp.find(params[:id])

    respond_to do |format|
      if @secmorapp.update_attributes(params[:secmorapp])
        flash[:notice] = 'Secmorapp was successfully updated.'
        format.html { redirect_to(@secmorapp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @secmorapp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secmorapps/1
  # DELETE /secmorapps/1.xml
  def destroy
    @secmorapp = Secmorapp.find(params[:id])
    @secmorapp.destroy

    respond_to do |format|
      format.html { redirect_to(secmorapps_url) }
      format.xml  { head :ok }
    end
  end
end
