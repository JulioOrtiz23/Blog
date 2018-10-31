class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /publications
  # GET /publications.json

  #This is use to get the data by the id of the user logged in. 
  def index
    @publications = Publication.where(['user_id = ?', current_user.id])
  end

   #Show all the publications of the users with an order of date
  def wall
    @publications = Publication.order('fecha_ingreso DESC')
  end
  
  # GET /publications/1
  # GET /publications/1.json

  def show
  end

  #GET /publications.json
  def list
    @publications = Publication.find(:all, :order => 'fecha_ingreso DESC')
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'La publicacion fue creada con exito' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'La publicacion fue modificada con exito' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'La publicacion fue eliminada con exito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:descripcion, :fecha_ingreso, :user_id)
    end
end
