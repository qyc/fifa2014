class BetsController < ApplicationController
  before_action :set_bet, only: [:show, :edit, :update, :destroy]

  # GET /bets
  # GET /bets.json
  def index
    @bets = Bet.all
  end

  # GET /bets/1
  # GET /bets/1.json
  def show
  end

  # GET /bets/new
  def new
    @bet = Bet.new
  end

  # GET /bets/1/edit
  def edit
  end

  # POST /bets
  # POST /bets.json
  def create
    @bet = Bet.new(bet_params)

    respond_to do |format|
      if @bet.save
        format.html { redirect_to @bet, notice: 'Bet was successfully created.' }
        format.json { render :show, status: :created, location: @bet }
      else
        format.html { render :new }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bets/1
  # PATCH/PUT /bets/1.json
  def update
    respond_to do |format|
      if @bet.update(bet_params)
        format.html { redirect_to @bet, notice: 'Bet was successfully updated.' }
        format.json { render :show, status: :ok, location: @bet }
      else
        format.html { render :edit }
        format.json { render json: @bet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bets/1
  # DELETE /bets/1.json
  def destroy
    @bet.destroy
    respond_to do |format|
      format.html { redirect_to bets_url, notice: 'Bet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def send_bet_email
    BetMailer.bet_email("Test Subject", Player.find(1), Match.all).deliver
    render nothing: true
  end
  
  def bet
    if params.key? :p and params.key? :m
      @type = :submit
      @player = Player.where(uuid: params[:p]).first rescue nil
      @matches = Match.where(uuid: params[:m])
    elsif params.key? :bet and params.key? :player
      @type = :result
      @player = Player.where(uuid: params[:player]).first rescue nil
      if @player.present?
        params[:bet].each do |m_id, result|
          match = Match.where(uuid: m_id).first rescue nil
          if match.present?
            bet = Bet.new
            bet.match_id = match.id
            bet.player_id = @player.id
            bet.winner = result
            bet.penalty_kicks = rand(0..5) # randomly 0 - 5
            bet.save
          end
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet
      @bet = Bet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_params
      params[:bet]
    end
end
