class AnnonceursController < ApplicationController
  before_action :set_annonceur, only: [:show, :edit, :update, :destroy]

  # GET /annonceurs
  # GET /annonceurs.json
  def index
    @annonceurs = Annonceur.all
  end

  # GET /annonceurs/1
  # GET /annonceurs/1.json
  def show
  end

  # GET /annonceurs/new
  def new
    @annonceur = Annonceur.new
  end

  # GET /annonceurs/1/edit
  def edit
  end

  # POST /annonceurs
  # POST /annonceurs.json
  def create
    @annonceur = Annonceur.new(annonceur_params)

    respond_to do |format|
      if @annonceur.save
        format.html { redirect_to @annonceur, notice: 'Annonceur was successfully created.' }
        format.json { render :show, status: :created, location: @annonceur }
      else
        format.html { render :new }
        format.json { render json: @annonceur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annonceurs/1
  # PATCH/PUT /annonceurs/1.json
  def update
    respond_to do |format|
      if @annonceur.update(annonceur_params)
        format.html { redirect_to @annonceur, notice: 'Annonceur was successfully updated.' }
        format.json { render :show, status: :ok, location: @annonceur }
      else
        format.html { render :edit }
        format.json { render json: @annonceur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonceurs/1
  # DELETE /annonceurs/1.json
  def destroy
    @annonceur.destroy
    respond_to do |format|
      format.html { redirect_to annonceurs_url, notice: 'Annonceur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonceur
      @annonceur = Annonceur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonceur_params
      params.require(:annonceur).permit(:email, :nom, :prenom, :password, :cp, :adresse, :telephone, :situation, :rayonIntervention)
    end
end
