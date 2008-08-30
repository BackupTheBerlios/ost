class EmpedimentsController < ApplicationController
  # GET /empediments
  # GET /empediments.xml
  def index
    @empediments = Empediment.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @empediments }
    end
  end

  # GET /empediments/1
  # GET /empediments/1.xml
  def show
    @empediment = Empediment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @empediment }
    end
  end

  # GET /empediments/new
  # GET /empediments/new.xml
  def new
    @empediment = Empediment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @empediment }
    end
  end

  # GET /empediments/1/edit
  def edit
    @empediment = Empediment.find(params[:id])
  end

  # POST /empediments
  # POST /empediments.xml
  def create
    @empediment = Empediment.new(params[:empediment])

    respond_to do |format|
      if @empediment.save
        flash[:notice] = 'Empediment was successfully created.'
        format.html { redirect_to(@empediment) }
        format.xml  { render :xml => @empediment, :status => :created, :location => @empediment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @empediment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /empediments/1
  # PUT /empediments/1.xml
  def update
    @empediment = Empediment.find(params[:id])

    respond_to do |format|
      if @empediment.update_attributes(params[:empediment])
        flash[:notice] = 'Empediment was successfully updated.'
        format.html { redirect_to(@empediment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @empediment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /empediments/1
  # DELETE /empediments/1.xml
  def destroy
    @empediment = Empediment.find(params[:id])
    @empediment.destroy

    respond_to do |format|
      format.html { redirect_to(empediments_url) }
      format.xml  { head :ok }
    end
  end
end
