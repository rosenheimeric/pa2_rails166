class EnrollmentLinksController < ApplicationController
  before_action :set_enrollment_link, only: %i[ show edit update destroy ]

  # GET /enrollment_links or /enrollment_links.json
  def index
    @enrollment_links = EnrollmentLink.all
  end

  # GET /enrollment_links/1 or /enrollment_links/1.json
  def show
  end

  # GET /enrollment_links/new
  def new
    @enrollment_link = EnrollmentLink.new
  end

  # GET /enrollment_links/1/edit
  def edit
  end

  # POST /enrollment_links or /enrollment_links.json
  def create
    puts (params)
    @enrollment_link = EnrollmentLink.new(course_id:params["course_id"])
    

    respond_to do |format|
      if @enrollment_link.save
        format.html { redirect_to @enrollment_link, notice: "Enrollment link was successfully created." }
        format.json { render :show, status: :created, location: @enrollment_link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enrollment_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrollment_links/1 or /enrollment_links/1.json
  def update
    respond_to do |format|
      if @enrollment_link.update(enrollment_link_params)
        format.html { redirect_to @enrollment_link, notice: "Enrollment link was successfully updated." }
        format.json { render :show, status: :ok, location: @enrollment_link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enrollment_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollment_links/1 or /enrollment_links/1.json
  def destroy
    @enrollment_link.destroy
    respond_to do |format|
      format.html { redirect_to enrollment_links_url, notice: "Enrollment link was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrollment_link
      @enrollment_link = EnrollmentLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def enrollment_link_params
    #   params.require(`:course_id`).permit(:user_id)
    # end
end
