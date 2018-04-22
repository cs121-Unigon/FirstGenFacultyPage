class ProfsController < ApplicationController
  before_action :set_prof, only: [:show, :edit, :update, :destroy]


  # GET /profs
  # GET /profs.json
  def testimonials
  end

  # GET /profs
  # GET /profs.json
  def index
    @profs = Prof.all
  end

  # GET /profs/1
  # GET /profs/1.json
  def show
  end

  # GET /profs/new
  def new
    @prof = Prof.new
    @departments = Department.all
  end

  # GET /profs/1/edit
  def edit
  end

  # POST /profs
  # POST /profs.json
  def create
    @prof = Prof.new(prof_params)
    @prof.user_id = current_user.id
    
    # Get a list of department so they can be in the dropdown menu
    #@departments = Departments.all

    respond_to do |format|
      if @prof.save
        format.html { redirect_to @prof, notice: 'Prof was successfully created.' }
        format.json { render :show, status: :created, location: @prof }
      else
        format.html { render :new }
        format.json { render json: @prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profs/1
  # PATCH/PUT /profs/1.json
  def update
    respond_to do |format|
      if @prof.update(prof_params)
        format.html { redirect_to @prof, notice: 'Prof was successfully updated.' }
        format.json { render :show, status: :ok, location: @prof }
      else
        format.html { render :edit }
        format.json { render json: @prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profs/1
  # DELETE /profs/1.json
  def destroy
    @prof.destroy
    respond_to do |format|
      format.html { redirect_to profs_url, notice: 'Prof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prof
      @prof = Prof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prof_params
      params.require(:prof).permit(:name, :lastname, :pronouns, :email, :interests, :whymentor, :lifestory, :funfact, :office, :hometown, :department_id, :avatar)
    end
end
