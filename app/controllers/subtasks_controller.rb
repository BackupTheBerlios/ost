class SubtasksController < ApplicationController
  # GET /subtasks
  # GET /subtasks.xml
  def index
    @subtasks = Subtask.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subtasks }
    end
  end

  # GET /subtasks/1
  # GET /subtasks/1.xml
  def show
    @subtask = Subtask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subtask }
    end
  end

  # GET /subtasks/new
  # GET /subtasks/new.xml
  def new
    @subtask = Subtask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subtask }
    end
  end

  # GET /subtasks/1/edit
  def edit
    @subtask = Subtask.find(params[:id])
  end

  # POST /subtasks
  # POST /subtasks.xml
  def create
    @subtask = Subtask.new(params[:subtask])

    respond_to do |format|
      if @subtask.save
        flash[:notice] = 'Subtask was successfully created.'
        format.html { redirect_to(@subtask) }
        format.xml  { render :xml => @subtask, :status => :created, :location => @subtask }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subtask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subtasks/1
  # PUT /subtasks/1.xml
  def update
    @subtask = Subtask.find(params[:id])

    respond_to do |format|
      if @subtask.update_attributes(params[:subtask])
        flash[:notice] = 'Subtask was successfully updated.'
        format.html { redirect_to(@subtask) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subtask.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subtasks/1
  # DELETE /subtasks/1.xml
  def destroy
    @subtask = Subtask.find(params[:id])
    @subtask.destroy

    respond_to do |format|
      format.html { redirect_to(subtasks_url) }
      format.xml  { head :ok }
    end
  end
end
