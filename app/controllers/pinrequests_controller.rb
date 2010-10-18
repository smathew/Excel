class PinrequestsController < ApplicationController
  # GET /pinrequests
  # GET /pinrequests.xml
  def index
    @pinrequests = Pinrequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pinrequests }
    end
  end

  # GET /pinrequests/1
  # GET /pinrequests/1.xml
  def show
    @pinrequest = Pinrequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pinrequest }
    end
  end

  # GET /pinrequests/new
  # GET /pinrequests/new.xml
  def new
    @pinrequest = Pinrequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pinrequest }
    end
  end

  # GET /pinrequests/1/edit
  def edit
    @pinrequest = Pinrequest.find(params[:id])
  end

  # POST /pinrequests
  # POST /pinrequests.xml
  def create
    @pinrequest = Pinrequest.new(params[:pinrequest])

    respond_to do |format|
      if @pinrequest.save
        flash[:notice] = 'Password request was successfully sent.'
		
		Emailer.deliver_pwdrequest_email(@pinrequest)
        format.html { redirect_to(@pinrequest) }
        format.xml  { render :xml => @pinrequest, :status => :created, :location => @pinrequest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pinrequest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pinrequests/1
  # PUT /pinrequests/1.xml
  def update
    @pinrequest = Pinrequest.find(params[:id])

    respond_to do |format|
      if @pinrequest.update_attributes(params[:pinrequest])
        flash[:notice] = 'Pinrequest was successfully updated.'
        format.html { redirect_to(@pinrequest) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pinrequest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pinrequests/1
  # DELETE /pinrequests/1.xml
  def destroy
    @pinrequest = Pinrequest.find(params[:id])
    @pinrequest.destroy

    respond_to do |format|
      format.html { redirect_to(pinrequests_url) }
      format.xml  { head :ok }
    end
  end
end
