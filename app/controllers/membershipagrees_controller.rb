class MembershipagreesController < ApplicationController
  # GET /membershipagrees
  # GET /membershipagrees.xml
  def index
    @membershipagrees = Membershipagree.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @membershipagrees }
    end
  end

  # GET /membershipagrees/1
  # GET /membershipagrees/1.xml
  def show
    @membershipagree = Membershipagree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @membershipagree }
	  #format.pdf { render :pdf => generate_pdf(@membershipagree) }
    end
  end

  # GET /membershipagrees/new
  # GET /membershipagrees/new.xml
  def new
    @membershipagree = Membershipagree.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @membershipagree }
    end
  end

  # GET /membershipagrees/1/edit
  def edit
    @membershipagree = Membershipagree.find(params[:id])
  end

  # POST /membershipagrees
  # POST /membershipagrees.xml
  def create
    @membershipagree = Membershipagree.new(params[:membershipagree])

	respond_to do |format|
      if @membershipagree.save
        #flash[:notice] = 'Membershipagree was successfully created.'
        format.html { redirect_to("/pdf/membership.pdf") }
        format.xml  { render :xml => "/pdf/membership.pdf", :status => :created, :location => @membershipagree }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membershipagree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /membershipagrees/1
  # PUT /membershipagrees/1.xml
  def update
    @membershipagree = Membershipagree.find(params[:id])

    respond_to do |format|
      if @membershipagree.update_attributes(params[:membershipagree])
        flash[:notice] = 'Membershipagree was successfully updated.'
        format.html { redirect_to(@membershipagree) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @membershipagree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /membershipagrees/1
  # DELETE /membershipagrees/1.xml
  def destroy
    @membershipagree = Membershipagree.find(params[:id])
    @membershipagree.destroy

    respond_to do |format|
      format.html { redirect_to(membershipagrees_url) }
      format.xml  { head :ok }
    end
  end
end
