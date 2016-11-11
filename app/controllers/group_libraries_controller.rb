class GroupLibrariesController < ApplicationController
  before_action :set_group_library, only: [:show, :edit, :update, :destroy]

  # GET /group_libraries
  # GET /group_libraries.json
  def index
    @group_libraries = GroupLibrary.all
  end

  # GET /group_libraries/1
  # GET /group_libraries/1.json
  def show
  end

  # GET /group_libraries/new
  def new
    @group_library = GroupLibrary.new
  end

  # GET /group_libraries/1/edit
  def edit
  end

  # POST /group_libraries
  # POST /group_libraries.json
  def create
    @group_library = GroupLibrary.new(group_library_params)

    respond_to do |format|
      if @group_library.save
        format.html { redirect_to @group_library, notice: 'Group library was successfully created.' }
        format.json { render :show, status: :created, location: @group_library }
      else
        format.html { render :new }
        format.json { render json: @group_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_libraries/1
  # PATCH/PUT /group_libraries/1.json
  def update
    respond_to do |format|
      if @group_library.update(group_library_params)
        format.html { redirect_to @group_library, notice: 'Group library was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_library }
      else
        format.html { render :edit }
        format.json { render json: @group_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_libraries/1
  # DELETE /group_libraries/1.json
  def destroy
    @group_library.destroy
    respond_to do |format|
      format.html { redirect_to group_libraries_url, notice: 'Group library was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_library
      @group_library = GroupLibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_library_params
      params.require(:group_library).permit(:name)
    end
end
