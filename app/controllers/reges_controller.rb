class RegesController < ApplicationController
  # GET /reges
  # GET /reges.xml
  def index
    @reges = Rege.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reges }
    end
  end

  # GET /reges/1
  # GET /reges/1.xml
  def show
    @rege = Rege.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rege }
    end
  end

  # GET /reges/new
  # GET /reges/new.xml
  def new
    @rege = Rege.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rege }
    end
  end

  # GET /reges/1/edit
  def edit
    @rege = Rege.find(params[:id])
  end

  # POST /reges
  # POST /reges.xml
  def create
    @rege = Rege.new(params[:rege])

    respond_to do |format|
      if @rege.save
        flash[:notice] = 'The information has been submitted to the credit union.'
		#send email
		Emailer.deliver_rege_email(@rege)
        format.html { redirect_to(@rege) }
        format.xml  { render :xml => @rege, :status => :created, :location => @rege }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reges/1
  # PUT /reges/1.xml
  def update
    @rege = Rege.find(params[:id])

    respond_to do |format|
      if @rege.update_attributes(params[:rege])
        flash[:notice] = 'Rege was successfully updated.'
        format.html { redirect_to(@rege) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rege.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reges/1
  # DELETE /reges/1.xml
  def destroy
    @rege = Rege.find(params[:id])
    @rege.destroy

    respond_to do |format|
      format.html { redirect_to(reges_url) }
      format.xml  { head :ok }
    end
  end
end
