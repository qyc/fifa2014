class BetSetController < ApplicationController
  
  def index
    @players = Player.all
    @bet_sets_by_date = Hash.new
    BetSet.all.each do |bs|
      key = bs.date.to_s
      @bet_sets_by_date[key] ||= Hash.new
      @bet_sets_by_date[key][bs.player_id.to_s] = bs
    end
  end

  # GET /bet_sets/email/:uuid
  def email
    bet_sets = BetSet.where(date: Date.parse(params[:date]))
    if params[:type].eql? "notify"
      bet_sets.each do |bet_set|
        BetMailer.bet_email(bet_set).deliver
        bet_set.email_sent = true
        bet_set.save!
      end
    elsif params[:type].eql? "result"
      BetMailer.result_email(bet_sets).deliver
    end
    redirect_to bet_set_index_url
  end
  
  # GET /bet_sets/bet?q=:uuid
  def bet
    @bet_set = BetSet.find_by_uuid(params[:q])
    if @bet_set.nil?
      raise ActiveRecord::RecordNotFound.new('Record not found!')
    end
  end
  
  # POST /bet_sets/submit
  def submit
    @bet_set = BetSet.find_by_uuid(params[:uuid])
    if @bet_set.present?
      params[:bet].each do |m_id, result|
        match = Match.find(m_id.to_i)
        if match.present?
          bet = Bet.new
          bet.match_id = match.id
          bet.player_id = @bet_set.player.id
          bet.winner = result
          bet.total_score = rand(0..5) # randomly 0 - 5
          bet.save
        end
      end
      @bet_set.submitted = true
      @bet_set.save
    end
    redirect_to "/bet_set/bet?q=#{params[:uuid]}"
  end
  
end
