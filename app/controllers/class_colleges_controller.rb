class ClassCollegesController < ApplicationController
  before_action :set_class_college, only: %i[ show edit update destroy ]

  # GET /class_colleges or /class_colleges.json
  def index
    @class_colleges = ClassCollege.all
  end

  # GET /class_colleges/1 or /class_colleges/1.json
  def show
  end

  # GET /class_colleges/new
  def new
    @class_college = ClassCollege.new
  end

  # GET /class_colleges/1/edit
  def edit
  end

  # POST /class_colleges or /class_colleges.json
  def create
    @class_college = ClassCollege.new(class_college_params)

    respond_to do |format|
      if @class_college.save
        format.html { redirect_to @class_college, notice: "Class college was successfully created." }
        format.json { render :show, status: :created, location: @class_college }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_college.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_colleges/1 or /class_colleges/1.json
  def update
    respond_to do |format|
      if @class_college.update(class_college_params)
        format.html { redirect_to @class_college, notice: "Class college was successfully updated." }
        format.json { render :show, status: :ok, location: @class_college }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_college.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_colleges/1 or /class_colleges/1.json
  def destroy
    @class_college.destroy

    respond_to do |format|
      format.html { redirect_to class_colleges_path, status: :see_other, notice: "Class college was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_college
      @class_college = ClassCollege.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_college_params
      params.require(:class_college).permit(:id_user, :id_schedule, :id_student_in_class, :year, :class_shift, :max_number_students, :id_subject)
    end
end
