class HelocagreesController < ApplicationController
  # GET /helocagrees
  # GET /helocagrees.xml
  def index
    @helocagrees = Helocagree.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helocagrees }
    end
  end

  # GET /helocagrees/1
  # GET /helocagrees/1.xml
  def show
    @helocagree = Helocagree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helocagree }
    end
  end

  # GET /helocagrees/new
  # GET /helocagrees/new.xml
  def new
    @helocagree = Helocagree.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @helocagree }
    end
  end

  # GET /helocagrees/1/edit
  def edit
    @helocagree = Helocagree.find(params[:id])
  end

  # POST /helocagrees
  # POST /helocagrees.xml
  def create
    @helocagree = Helocagree.new(params[:helocagree])

    respond_to do |format|
      if @helocagree.save
        #flash[:notice] = 'Helocagree was successfully created.'
        format.html { redirect_to(new_helocapp_path) }
        format.xml  { render :xml => @helocagree, :status => :created, :location => @helocagree }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @helocagree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helocagrees/1
  # PUT /helocagrees/1.xml
  def update
    @helocagree = Helocagree.find(params[:id])

    respond_to do |format|
      if @helocagree.update_attributes(params[:helocagree])
        flash[:notice] = 'Helocagree was successfully updated.'
        format.html { redirect_to(@helocagree) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @helocagree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helocagrees/1
  # DELETE /helocagrees/1.xml
  def destroy
    @helocagree = Helocagree.find(params[:id])
    @helocagree.destroy

    respond_to do |format|
      format.html { redirect_to(helocagrees_url) }
      format.xml  { head :ok }
    end
  end
end
