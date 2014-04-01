class UsertoenginesController < ApplicationController
  before_action :set_usertoengine, only: [:show, :edit, :update, :destroy]

  # GET /usertoengines
  # GET /usertoengines.json
  def index
    @usertoengines = Usertoengine.all
  end

  # GET /usertoengines/1
  # GET /usertoengines/1.json
  def show
  end

  # GET /usertoengines/new
  def new
    @usertoengine = Usertoengine.new
  end

  # GET /usertoengines/1/edit
  def edit
  end

  # POST /usertoengines
  # POST /usertoengines.json
  def create
    @usertoengine = Usertoengine.new(usertoengine_params)

    respond_to do |format|
      if @usertoengine.save
        format.html { redirect_to @usertoengine, notice: 'Usertoengine was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usertoengine }
      else
        format.html { render action: 'new' }
        format.json { render json: @usertoengine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usertoengines/1
  # PATCH/PUT /usertoengines/1.json
  def update
    respond_to do |format|
      if @usertoengine.update(usertoengine_params)
        format.html { redirect_to @usertoengine, notice: 'Usertoengine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usertoengine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usertoengines/1
  # DELETE /usertoengines/1.json
  def destroy
    @usertoengine.destroy
    respond_to do |format|
      format.html { redirect_to usertoengines_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertoengine
      @usertoengine = Usertoengine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usertoengine_params
      params[:usertoengine]
    end
end
