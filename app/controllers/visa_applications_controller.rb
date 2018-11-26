class VisaApplicationsController < ApplicationController
  before_action :set_visa_application, only: [:show, :edit, :update, :destroy]

  # GET /visa_applications
  # GET /visa_applications.json
  def index
    @visa_applications = VisaApplication.all
  end

  # GET /visa_applications/1
  # GET /visa_applications/1.json
  def show
  end

  # GET /visa_applications/new
  def new
    @visa_application = VisaApplication.new
  end

  # GET /visa_applications/1/edit
  def edit
  end

  # POST /visa_applications
  # POST /visa_applications.json
  def create
    @visa_application = VisaApplication.new(visa_application_params)

    respond_to do |format|
      if @visa_application.save
        format.html { redirect_to @visa_application, notice: 'Visa application was successfully created.' }
        format.json { render :show, status: :created, location: @visa_application }
      else
        format.html { render :new }
        format.json { render json: @visa_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_applications/1
  # PATCH/PUT /visa_applications/1.json
  def update
    respond_to do |format|
      if @visa_application.update(visa_application_params)
        format.html { redirect_to @visa_application, notice: 'Visa application was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_application }
      else
        format.html { render :edit }
        format.json { render json: @visa_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_applications/1
  # DELETE /visa_applications/1.json
  def destroy
    @visa_application.destroy
    respond_to do |format|
      format.html { redirect_to visa_applications_url, notice: 'Visa application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_application
      @visa_application = VisaApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_application_params
      params.require(:visa_application).permit(:title, :body)
    end
end
