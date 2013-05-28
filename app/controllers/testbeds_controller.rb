class TestbedsController < ApplicationController
  # GET /testbeds
  # GET /testbeds.json
  def index
    @testbeds = Testbed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testbeds }
    end
  end

  # GET /testbeds/1
  # GET /testbeds/1.json
  def show
    @testbed = Testbed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testbed }
    end
  end

  # GET /testbeds/new
  # GET /testbeds/new.json
  def new
    @testbed = Testbed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testbed }
    end
  end

  # GET /testbeds/1/edit
  def edit
    @testbed = Testbed.find(params[:id])
  end

  # POST /testbeds
  # POST /testbeds.json
  def create
    @testbed = Testbed.new(params[:testbed])

    respond_to do |format|
      if @testbed.save
        format.html { redirect_to @testbed, notice: 'Testbed was successfully created.' }
        format.json { render json: @testbed, status: :created, location: @testbed }
      else
        format.html { render action: "new" }
        format.json { render json: @testbed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testbeds/1
  # PUT /testbeds/1.json
  def update
    @testbed = Testbed.find(params[:id])

    respond_to do |format|
      if @testbed.update_attributes(params[:testbed])
        format.html { redirect_to @testbed, notice: 'Testbed was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @testbed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testbeds/1
  # DELETE /testbeds/1.json
  def destroy
    @testbed = Testbed.find(params[:id])
    @testbed.destroy

    respond_to do |format|
      format.html { redirect_to testbeds_url }
      format.json { head :ok }
    end
  end
end
