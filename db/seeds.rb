# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago', flag: "" }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities)

# Create Players
Player.create([
  { name: "Andy", email: "andy.leroy@labcentrix.com" },
  { name: "Jessica", email: "jessica.ganon@labcentrix.com" },
  { name: "Juan", email: "juan.berrocal@labcentrix.com" },
  { name: "Lia", email: "lia.sylvestri@labcentrix.com" },
  { name: "Mayura", email: "mayura.wagle@labcentrix.com" },
  { name: "Mike", email: "mike.lujan@labcentrix.com" },
  { name: "Trung", email: "trung.nguyet@labcentrix.com" },
  { name: "Xiaoyuan", email: "xiaoyuan.liu@labcentrix.com" },
  { name: "Yalun", email: "yalun.li@labcentrix.com" },
  { name: "Yucheng", email: "yucheng.qian@labcentrix.com" }
])

# Create Teams
Team.create([
  { name: "Algeria", flag: "http://flagpedia.net/data/flags/normal/dz.png" },
  { name: "Argentina", flag: "http://flagpedia.net/data/flags/normal/ar.png" },
  { name: "Australia", flag: "http://flagpedia.net/data/flags/normal/au.png" },
  { name: "Belgium", flag: "http://flagpedia.net/data/flags/normal/be.png" },
  { name: "Bosnia-Herzegovina", flag: "http://flagpedia.net/data/flags/normal/ba.png" },
  { name: "Brazil", flag: "http://flagpedia.net/data/flags/normal/br.png" },
  { name: "Cameroon", flag: "http://flagpedia.net/data/flags/normal/cm.png" },
  { name: "Chile", flag: "http://flagpedia.net/data/flags/normal/cl.png" },
  { name: "Colombia", flag: "http://flagpedia.net/data/flags/normal/co.png" },
  { name: "Costa Rica", flag: "http://flagpedia.net/data/flags/normal/cr.png" },
  { name: "Côte d'Ivoire", flag: "http://flagpedia.net/data/flags/normal/ci.png" },
  { name: "Croatia", flag: "http://flagpedia.net/data/flags/normal/hr.png" },
  { name: "Ecuador", flag: "http://flagpedia.net/data/flags/normal/ec.png" },
  { name: "England", flag: "http://www.mapsofworld.com/images/world-countries-flags/england-flag.jpg" },
  { name: "France", flag: "http://flagpedia.net/data/flags/normal/fr.png" },
  { name: "Germany", flag: "http://flagpedia.net/data/flags/normal/de.png" },
  { name: "Ghana", flag: "http://flagpedia.net/data/flags/normal/gh.png" },
  { name: "Greece", flag: "http://flagpedia.net/data/flags/normal/gr.png" },
  { name: "Honduras", flag: "http://flagpedia.net/data/flags/normal/hn.png" },
  { name: "Iran", flag: "http://flagpedia.net/data/flags/normal/ir.png" },
  { name: "Italy", flag: "http://flagpedia.net/data/flags/normal/it.png" },
  { name: "Japan", flag: "http://flagpedia.net/data/flags/normal/jp.png" },
  { name: "Korea Republic", flag: "http://flagpedia.net/data/flags/normal/kr.png" },
  { name: "Mexico", flag: "http://flagpedia.net/data/flags/normal/mx.png" },
  { name: "Netherlands", flag: "http://flagpedia.net/data/flags/normal/nl.png" },
  { name: "Nigeria", flag: "http://flagpedia.net/data/flags/normal/ng.png" },
  { name: "Portugal", flag: "http://flagpedia.net/data/flags/normal/pt.png" },
  { name: "Russia", flag: "http://flagpedia.net/data/flags/normal/ru.png" },
  { name: "Spain", flag: "http://flagpedia.net/data/flags/normal/es.png" },
  { name: "Switzerland", flag: "http://flagpedia.net/data/flags/normal/ch.png" },
  { name: "Uruguay", flag: "http://flagpedia.net/data/flags/normal/uy.png" },
  { name: "USA", flag: "http://flagpedia.net/data/flags/normal/us.png" }
])

# Create Matches
Match.create([
  { location: "Sao Paulo", date_time: DateTime.parse("Jun 12, 2014 21:00"), team_a_id: Team.find_by_name("Brazil").id, team_b_id: Team.find_by_name("Croatia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Natal", date_time: DateTime.parse("Jun 13, 2014 17:00"), team_a_id: Team.find_by_name("Mexico").id, team_b_id: Team.find_by_name("Cameroon").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Salvador", date_time: DateTime.parse("Jun 13, 2014 20:00"), team_a_id: Team.find_by_name("Spain").id, team_b_id: Team.find_by_name("Netherlands").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Curitiba", date_time: DateTime.parse("Jun 13, 2014 23:00"), team_a_id: Team.find_by_name("Chile").id, team_b_id: Team.find_by_name("Australia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jun 14, 2014 17:00"), team_a_id: Team.find_by_name("Colombia").id, team_b_id: Team.find_by_name("Greece").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Recife", date_time: DateTime.parse("Jun 15, 2014 02:00"), team_a_id: Team.find_by_name("Côte d'Ivoire").id, team_b_id: Team.find_by_name("Japan").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Fortaleza", date_time: DateTime.parse("Jun 14, 2014 20:00"), team_a_id: Team.find_by_name("Uruguay").id, team_b_id: Team.find_by_name("Costa Rica").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Manaus", date_time: DateTime.parse("Jun 14, 2014 23:00"), team_a_id: Team.find_by_name("England").id, team_b_id: Team.find_by_name("Italy").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Brasilia", date_time: DateTime.parse("Jun 15, 2014 17:00"), team_a_id: Team.find_by_name("Switzerland").id, team_b_id: Team.find_by_name("Ecuador").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Porto Alegre", date_time: DateTime.parse("Jun 15, 2014 20:00"), team_a_id: Team.find_by_name("France").id, team_b_id: Team.find_by_name("Honduras").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jun 15, 2014 23:00"), team_a_id: Team.find_by_name("Argentina").id, team_b_id: Team.find_by_name("Bosnia-Herzegovina").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Salvador", date_time: DateTime.parse("Jun 16, 2014 17:00"), team_a_id: Team.find_by_name("Germany").id, team_b_id: Team.find_by_name("Portugal").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Curitiba", date_time: DateTime.parse("Jun 16, 2014 20:00"), team_a_id: Team.find_by_name("Iran").id, team_b_id: Team.find_by_name("Nigeria").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Natal", date_time: DateTime.parse("Jun 16, 2014 23:00"), team_a_id: Team.find_by_name("Ghana").id, team_b_id: Team.find_by_name("USA").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jun 17, 2014 17:00"), team_a_id: Team.find_by_name("Belgium").id, team_b_id: Team.find_by_name("Algeria").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Fortaleza", date_time: DateTime.parse("Jun 17, 2014 20:00"), team_a_id: Team.find_by_name("Brazil").id, team_b_id: Team.find_by_name("Mexico").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Cuiaba", date_time: DateTime.parse("Jun 17, 2014 23:00"), team_a_id: Team.find_by_name("Russia").id, team_b_id: Team.find_by_name("Korea Republic").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Porto Alegre", date_time: DateTime.parse("Jun 18, 2014 17:00"), team_a_id: Team.find_by_name("Australia").id, team_b_id: Team.find_by_name("Netherlands").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Manaus", date_time: DateTime.parse("Jun 18, 2014 23:00"), team_a_id: Team.find_by_name("Cameroon").id, team_b_id: Team.find_by_name("Croatia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jun 18, 2014 20:00"), team_a_id: Team.find_by_name("Spain").id, team_b_id: Team.find_by_name("Chile").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Brasilia", date_time: DateTime.parse("Jun 19, 2014 17:00"), team_a_id: Team.find_by_name("Colombia").id, team_b_id: Team.find_by_name("Côte d'Ivoire").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Sao Paulo", date_time: DateTime.parse("Jun 19, 2014 20:00"), team_a_id: Team.find_by_name("Uruguay").id, team_b_id: Team.find_by_name("England").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Natal", date_time: DateTime.parse("Jun 19, 2014 23:00"), team_a_id: Team.find_by_name("Japan").id, team_b_id: Team.find_by_name("Greece").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Recife", date_time: DateTime.parse("Jun 20, 2014 17:00"), team_a_id: Team.find_by_name("Italy").id, team_b_id: Team.find_by_name("Costa Rica").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Salvador", date_time: DateTime.parse("Jun 20, 2014 20:00"), team_a_id: Team.find_by_name("Switzerland").id, team_b_id: Team.find_by_name("France").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Curitiba", date_time: DateTime.parse("Jun 20, 2014 23:00"), team_a_id: Team.find_by_name("Honduras").id, team_b_id: Team.find_by_name("Ecuador").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jun 21, 2014 17:00"), team_a_id: Team.find_by_name("Argentina").id, team_b_id: Team.find_by_name("Iran").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Fortaleza", date_time: DateTime.parse("Jun 21, 2014 20:00"), team_a_id: Team.find_by_name("Germany").id, team_b_id: Team.find_by_name("Ghana").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Cuiaba", date_time: DateTime.parse("Jun 21, 2014 23:00"), team_a_id: Team.find_by_name("Nigeria").id, team_b_id: Team.find_by_name("Bosnia-Herzegovina").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Porto Alegre", date_time: DateTime.parse("Jun 22, 2014 20:00"), team_a_id: Team.find_by_name("Korea Republic").id, team_b_id: Team.find_by_name("Algeria").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Manaus", date_time: DateTime.parse("Jun 22, 2014 23:00"), team_a_id: Team.find_by_name("USA").id, team_b_id: Team.find_by_name("Portugal").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jun 22, 2014 17:00"), team_a_id: Team.find_by_name("Belgium").id, team_b_id: Team.find_by_name("Russia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Curitiba", date_time: DateTime.parse("Jun 23, 2014 17:00"), team_a_id: Team.find_by_name("Australia").id, team_b_id: Team.find_by_name("Spain").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Sao Paulo", date_time: DateTime.parse("Jun 23, 2014 17:00"), team_a_id: Team.find_by_name("Netherlands").id, team_b_id: Team.find_by_name("Chile").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Brasilia", date_time: DateTime.parse("Jun 23, 2014 21:00"), team_a_id: Team.find_by_name("Cameroon").id, team_b_id: Team.find_by_name("Brazil").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Recife", date_time: DateTime.parse("Jun 23, 2014 21:00"), team_a_id: Team.find_by_name("Croatia").id, team_b_id: Team.find_by_name("Mexico").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Natal", date_time: DateTime.parse("Jun 24, 2014 17:00"), team_a_id: Team.find_by_name("Italy").id, team_b_id: Team.find_by_name("Uruguay").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jun 24, 2014 17:00"), team_a_id: Team.find_by_name("Costa Rica").id, team_b_id: Team.find_by_name("England").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Cuiaba", date_time: DateTime.parse("Jun 24, 2014 21:00"), team_a_id: Team.find_by_name("Japan").id, team_b_id: Team.find_by_name("Colombia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Fortaleza", date_time: DateTime.parse("Jun 24, 2014 21:00"), team_a_id: Team.find_by_name("Greece").id, team_b_id: Team.find_by_name("Côte d'Ivoire").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Porto Alegre", date_time: DateTime.parse("Jun 25, 2014 17:00"), team_a_id: Team.find_by_name("Nigeria").id, team_b_id: Team.find_by_name("Argentina").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Salvador", date_time: DateTime.parse("Jun 25, 2014 17:00"), team_a_id: Team.find_by_name("Bosnia-Herzegovina").id, team_b_id: Team.find_by_name("Iran").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Manaus", date_time: DateTime.parse("Jun 25, 2014 21:00"), team_a_id: Team.find_by_name("Honduras").id, team_b_id: Team.find_by_name("Switzerland").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jun 25, 2014 21:00"), team_a_id: Team.find_by_name("Ecuador").id, team_b_id: Team.find_by_name("France").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Recife", date_time: DateTime.parse("Jun 26, 2014 17:00"), team_a_id: Team.find_by_name("USA").id, team_b_id: Team.find_by_name("Germany").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Brasilia", date_time: DateTime.parse("Jun 26, 2014 17:00"), team_a_id: Team.find_by_name("Portugal").id, team_b_id: Team.find_by_name("Ghana").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Sao Paulo", date_time: DateTime.parse("Jun 26, 2014 21:00"), team_a_id: Team.find_by_name("Korea Republic").id, team_b_id: Team.find_by_name("Belgium").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Curitiba", date_time: DateTime.parse("Jun 26, 2014 21:00"), team_a_id: Team.find_by_name("Algeria").id, team_b_id: Team.find_by_name("Russia").id, allow_tie: true, stage: "Group Stage", point: 1},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jun 28, 2014 13:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jun 28, 2014 17:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Fortaleza", date_time: DateTime.parse("Jun 29, 2014 13:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Recife", date_time: DateTime.parse("Jun 29, 2014 17:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Brasilia", date_time: DateTime.parse("Jun 30, 2014 13:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Porto Alegre", date_time: DateTime.parse("Jun 30, 2014 17:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Sao Paulo", date_time: DateTime.parse("Jul 1, 2014 13:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Salvador", date_time: DateTime.parse("Jul 1, 2014 17:00"), allow_tie: false, stage: "Round of 16", point: 2},
  { location: "Fortaleza", date_time: DateTime.parse("Jul 4, 2014 17:00"), allow_tie: false, stage: "Quarterfinals", point: 4},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jul 4, 2014 13:00"), allow_tie: false, stage: "Quarterfinals", point: 4},
  { location: "Salvador", date_time: DateTime.parse("Jul 5, 2014 17:00"), allow_tie: false, stage: "Quarterfinals", point: 4},
  { location: "Brasilia", date_time: DateTime.parse("Jul 5, 2014 13:00"), allow_tie: false, stage: "Quarterfinals", point: 4},
  { location: "Belo Horizonte", date_time: DateTime.parse("Jul 8, 2014 17:00"), allow_tie: false, stage: "Semi-Finals", point: 8},
  { location: "Sao Paulo", date_time: DateTime.parse("Jul 9, 2014 17:00"), allow_tie: false, stage: "Semi-Finals", point: 8},
  { location: "Brasilia", date_time: DateTime.parse("Jul 12, 2014 17:00"), allow_tie: false, stage: "Third-Place Play-Off", point: 12},
  { location: "Rio De Janeiro", date_time: DateTime.parse("Jul 13, 2014 16:00"), allow_tie: false, stage: "Final", point: 16}
])

# Create Bet Sets
match_sets = Hash.new
Match.all.each do |match|
  key = match.est_time.to_date.to_s
  match_sets[key] ||= []
  match_sets[key] << match
end
Player.all.each do |player|
  match_sets.each do |key, matches|
    BetSet.create({
      uuid: SecureRandom.uuid,
      player_id: player.id,
      date: matches.first.est_time.to_date,
      matches: (matches.collect {|m| m.id }).join("|")
    })
  end
end