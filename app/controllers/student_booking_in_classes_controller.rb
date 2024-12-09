class StudentBookingInClassesController < ApplicationController
  before_action :set_student_booking_in_class, only: %i[ show edit update destroy ]

  # GET /student_booking_in_classes or /student_booking_in_classes.json
  def index
    @student_booking_in_classes = StudentBookingInClass.all
  end

  # GET /student_booking_in_classes/1 or /student_booking_in_classes/1.json
  def show
  end

  # GET /student_booking_in_classes/new
  def new
    @student_booking_in_class = StudentBookingInClass.new
  end

  # GET /student_booking_in_classes/1/edit
  def edit
  end

  # POST /student_booking_in_classes or /student_booking_in_classes.json
  def create
    @student_booking_in_class = StudentBookingInClass.new(student_booking_in_class_params)

    respond_to do |format|
      if @student_booking_in_class.save
        format.html { redirect_to @student_booking_in_class, notice: "Student booking in class was successfully created." }
        format.json { render :show, status: :created, location: @student_booking_in_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_booking_in_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_booking_in_classes/1 or /student_booking_in_classes/1.json
  def update
    respond_to do |format|
      if @student_booking_in_class.update(student_booking_in_class_params)
        format.html { redirect_to @student_booking_in_class, notice: "Student booking in class was successfully updated." }
        format.json { render :show, status: :ok, location: @student_booking_in_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_booking_in_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_booking_in_classes/1 or /student_booking_in_classes/1.json
  def destroy
    @student_booking_in_class.destroy

    respond_to do |format|
      format.html { redirect_to student_booking_in_classes_path, status: :see_other, notice: "Student booking in class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_booking_in_class
      @student_booking_in_class = StudentBookingInClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_booking_in_class_params
      params.require(:student_booking_in_class).permit(:id_user, :id_student_in_class, :class_shift)
    end
end
