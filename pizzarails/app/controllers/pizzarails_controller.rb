class PizzarailsController < ApplicationController
  # GET /pizzarails
  # GET /pizzarails.json
  def index
    @pizzarails = Pizzarail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizzarails }
    end
  end

  # GET /pizzarails/1
  # GET /pizzarails/1.json
  def show
    @pizzarail = Pizzarail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizzarail }
    end
  end

  # GET /pizzarails/new
  # GET /pizzarails/new.json
  def new
    @pizzarail = Pizzarail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizzarail }
    end
  end

  # GET /pizzarails/1/edit
  def edit
    @pizzarail = Pizzarail.find(params[:id])
  end

  # POST /pizzarails
  # POST /pizzarails.json
  def create
    @pizzarail = Pizzarail.new(params[:pizzarail])

    respond_to do |format|
      if @pizzarail.save
        format.html { redirect_to @pizzarail, notice: 'Pizzarail was successfully created.' }
        format.json { render json: @pizzarail, status: :created, location: @pizzarail }
      else
        format.html { render action: "new" }
        format.json { render json: @pizzarail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizzarails/1
  # PUT /pizzarails/1.json
  def update
    @pizzarail = Pizzarail.find(params[:id])

    respond_to do |format|
      if @pizzarail.update_attributes(params[:pizzarail])
        format.html { redirect_to @pizzarail, notice: 'Pizzarail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizzarail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzarails/1
  # DELETE /pizzarails/1.json
  def destroy
    @pizzarail = Pizzarail.find(params[:id])
    @pizzarail.destroy

    respond_to do |format|
      format.html { redirect_to pizzarails_url }
      format.json { head :no_content }
    end
  end
end
