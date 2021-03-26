class EnrollmentLinkscourseListsController < ApplicationController
  before_action :set_enrollment_linkscourse_list, only: %i[ show edit update destroy ]

  # GET /enrollment_linkscourse_lists or /enrollment_linkscourse_lists.json
  def index
    @enrollment_linkscourse_lists = EnrollmentLinkscourseList.all
  end

  # GET /enrollment_linkscourse_lists/1 or /enrollment_linkscourse_lists/1.json
  def show
  end

  # GET /enrollment_linkscourse_lists/new
  def new
    @enrollment_linkscourse_list = EnrollmentLinkscourseList.new
  end

  # GET /enrollment_linkscourse_lists/1/edit
  def edit
  end

  # POST /enrollment_linkscourse_lists or /enrollment_linkscourse_lists.json
  def create
    @enrollment_linkscourse_list = EnrollmentLinkscourseList.new(enrollment_linkscourse_list_params)

    respond_to do |format|
      if @enrollment_linkscourse_list.save
        format.html { redirect_to @enrollment_linkscourse_list, notice: "Enrollment linkscourse list was successfully created." }
        format.json { render :show, status: :created, location: @enrollment_linkscourse_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enrollment_linkscourse_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollment_linkscourse_lists/1 or /enrollment_linkscourse_lists/1.json
  def update
    respond_to do |format|
      if @enrollment_linkscourse_list.update(enrollment_linkscourse_list_params)
        format.html { redirect_to @enrollment_linkscourse_list, notice: "Enrollment linkscourse list was successfully updated." }
        format.json { render :show, status: :ok, location: @enrollment_linkscourse_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enrollment_linkscourse_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_linkscourse_lists/1 or /enrollment_linkscourse_lists/1.json
  def destroy
    @enrollment_linkscourse_list.destroy
    respond_to do |format|
      format.html { redirect_to enrollment_linkscourse_lists_url, notice: "Enrollment linkscourse list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_linkscourse_list
      @enrollment_linkscourse_list = EnrollmentLinkscourseList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enrollment_linkscourse_list_params
      params.require(:enrollment_linkscourse_list).permit(:)
    end
end
