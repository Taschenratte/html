class KantesController < ApplicationController
  # GET /kantes
  # GET /kantes.xml
  def index
    @kantes = Kante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kantes }
    end
  end

  # GET /kantes/1
  # GET /kantes/1.xml
  def show
    @kante = Kante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kante }
    end
  end

  # GET /kantes/new
  # GET /kantes/new.xml
  def new
    @kante = Kante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kante }
    end
  end

  # GET /kantes/1/edit
  def edit
    @kante = Kante.find(params[:id])
  end

  # POST /kantes
  # POST /kantes.xml
  def create
    @kante = Kante.new(params[:kante])

    respond_to do |format|
      if @kante.save
        format.html { redirect_to(@kante, :notice => 'Kante was successfully created.') }
        format.xml  { render :xml => @kante, :status => :created, :location => @kante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kantes/1
  # PUT /kantes/1.xml
  def update
    @kante = Kante.find(params[:id])

    respond_to do |format|
      if @kante.update_attributes(params[:kante])
        format.html { redirect_to(@kante, :notice => 'Kante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kantes/1
  # DELETE /kantes/1.xml
  def destroy
    @kante = Kante.find(params[:id])
    @kante.destroy

    respond_to do |format|
      format.html { redirect_to(kantes_url) }
      format.xml  { head :ok }
    end
  end
end
