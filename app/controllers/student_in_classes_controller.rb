class StudentInClassesController < ApplicationController
  before_action :set_student_in_class, only: %i[ show edit update destroy ]

  # GET /student_in_classes or /student_in_classes.json
  def index
    @student_in_classes = StudentInClass.all
  end

  # GET /student_in_classes/1 or /student_in_classes/1.json
  def show
  end

  # GET /student_in_classes/new
  def new
    @student_in_class = StudentInClass.new
  end

  # GET /student_in_classes/1/edit
  def edit
  end

  # POST /student_in_classes or /student_in_classes.json
  def create
    @student_in_class = StudentInClass.new(student_in_class_params)

    respond_to do |format|
      if @student_in_class.save
        format.html { redirect_to @student_in_class, notice: "Student in class was successfully created." }
        format.json { render :show, status: :created, location: @student_in_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_in_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_in_classes/1 or /student_in_classes/1.json
  def update
    respond_to do |format|
      if @student_in_class.update(student_in_class_params)
        format.html { redirect_to @student_in_class, notice: "Student in class was successfully updated." }
        format.json { render :show, status: :ok, location: @student_in_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_in_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_in_classes/1 or /student_in_classes/1.json
  def destroy
    @student_in_class.destroy

    respond_to do |format|
      format.html { redirect_to student_in_classes_path, status: :see_other, notice: "Student in class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_in_class
      @student_in_class = StudentInClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_in_class_params
      params.require(:student_in_class).permit(:id_student, :fullname, :age, :id_class_year)
    end
end
