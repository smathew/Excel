class SecmoragreesController < ApplicationController
  # GET /secmoragrees
  # GET /secmoragrees.xml
  def index
    @secmoragrees = Secmoragree.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @secmoragrees }
    end
  end

  # GET /secmoragrees/1
  # GET /secmoragrees/1.xml
  def show
    @secmoragree = Secmoragree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @secmoragree }
    end
  end

  # GET /secmoragrees/new
  # GET /secmoragrees/new.xml
  def new
    @secmoragree = Secmoragree.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @secmoragree }
    end
  end

  # GET /secmoragrees/1/edit
  def edit
    @secmoragree = Secmoragree.find(params[:id])
  end

  # POST /secmoragrees
  # POST /secmoragrees.xml
  def create
    @secmoragree = Secmoragree.new(params[:secmoragree])

    respond_to do |format|
      if @secmoragree.save
        #flash[:notice] = 'Secmoragree was successfully created.'
        format.html { redirect_to(new_secmorapp_path) }
        format.xml  { render :xml => @secmoragree, :status => :created, :location => @secmoragree }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @secmoragree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /secmoragrees/1
  # PUT /secmoragrees/1.xml
  def update
    @secmoragree = Secmoragree.find(params[:id])

    respond_to do |format|
      if @secmoragree.update_attributes(params[:secmoragree])
        flash[:notice] = 'Secmoragree was successfully updated.'
        format.html { redirect_to(@secmoragree) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @secmoragree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /secmoragrees/1
  # DELETE /secmoragrees/1.xml
  def destroy
    @secmoragree = Secmoragree.find(params[:id])
    @secmoragree.destroy

    respond_to do |format|
      format.html { redirect_to(secmoragrees_url) }
      format.xml  { head :ok }
    end
  end
end
