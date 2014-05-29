class BetMailer < ActionMailer::Base
  
  default from: "FIFA2014 <fifa2014@labcentrix.com>"
  
  def bet_email(subject, player, matches)
    @player = player
    @matches = matches
    mail(to: player.email, subject: subject)
  end
  
end
