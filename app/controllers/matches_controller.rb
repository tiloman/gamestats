class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all.order('created_at DESC')
    @matches_days = @matches.group_by {|match| match.created_at.to_date }
  end


  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = current_user.matches.build
    @user = current_user
    @allUsers = User.all.where("id != ?",current_user.id)
  end

  # GET /matches/1/edit
  def edit
    @user = current_user
    @allUsers = User.all.where("id != ?",current_user.id)
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = current_user.matches.build(match_params)
    @user = current_user
    @allUsers = User.all


    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:game, :player1, :player2, :scoreplayer1, :scoreplayer2)
    end

    def correct_user
      @match = current_user.matches.find_by(id: params[:id])
      redirect_to matches_path, notice: "Du darfst den Eintrag nicht verändern." if @match.nil?
    end



end
