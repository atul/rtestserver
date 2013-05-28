class TestbedOwnersController < ApplicationController
  # GET /testbed_owners
  # GET /testbed_owners.json
  def index
    @testbed_owners = TestbedOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testbed_owners }
    end
  end

  # GET /testbed_owners/1
  # GET /testbed_owners/1.json
  def show
    @testbed_owner = TestbedOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testbed_owner }
    end
  end

  # GET /testbed_owners/new
  # GET /testbed_owners/new.json
  def new
    @testbed_owner = TestbedOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testbed_owner }
    end
  end

  # GET /testbed_owners/1/edit
  def edit
    @testbed_owner = TestbedOwner.find(params[:id])
  end

  # POST /testbed_owners
  # POST /testbed_owners.json
  def create
    @testbed_owner = TestbedOwner.new(params[:testbed_owner])

    respond_to do |format|
      if @testbed_owner.save
        format.html { redirect_to @testbed_owner, notice: 'Testbed owner was successfully created.' }
        format.json { render json: @testbed_owner, status: :created, location: @testbed_owner }
      else
        format.html { render action: "new" }
        format.json { render json: @testbed_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testbed_owners/1
  # PUT /testbed_owners/1.json
  def update
    @testbed_owner = TestbedOwner.find(params[:id])

    respond_to do |format|
      if @testbed_owner.update_attributes(params[:testbed_owner])
        format.html { redirect_to @testbed_owner, notice: 'Testbed owner was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @testbed_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testbed_owners/1
  # DELETE /testbed_owners/1.json
  def destroy
    @testbed_owner = TestbedOwner.find(params[:id])
    @testbed_owner.destroy

    respond_to do |format|
      format.html { redirect_to testbed_owners_url }
      format.json { head :ok }
    end
  end
end
