require 'faker'
require 'rest-client'

teamsResp = RestClient.get('https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League')
JSON.parse(teamsResp)

results = JSON.parse(teamsResp)["teams"]
results.each do |result|
    Team.create(
        name: result["strAlternate"],
        image: result["strTeamBadge"],
        description: result["strDescriptionEN"],
        stadium: result["strStadium"],
        stadium_img: result["strStadiumThumb"],
        website: result["strWebsite"],
        banner: result["strTeamBanner"],
        youtube: result["strYoutube"],
        jersey: result["strTeamJersey"]
    )
end

resultsResp = RestClient.get('https://www.thesportsdb.com/api/v1/json/1/eventspastleague.php?id=4328')
JSON.parse(resultsResp)

results = JSON.parse(resultsResp)["events"]
results.each do |result|
    Match.create(
        game1: result["strEvent"],
        game2: result["strEventAlternate"],
        season: result["strSeason"],
        home: result["strHomeTeam"],
        away: result["strAwayTeam"],
        home_score: result["intHomeScore"],
        away_score: result["intAwayScore"],
        date: result["dateEvent"],
        image: result["strThumb"],
        video: result["strVideo"]
    )
end

User.create([
    {
        username: "chrisk",
        email: "chris.kim1990@gmail.com",
        password_digest: "#{User.digest('kimfam')}"
    }
])
User.create([
    {
        username: "JamesB",
        email: "JB007@chickmagnet.com",
        password_digest: "#{User.digest('jb007')}"
    }
])
10.times do
    Review.create({
        title: Faker::Music::RockBand.song,
        description: Faker::Quote.yoda,
        likes: rand(5..20),
        author: User.first.email,
        team_id: 1,
        user_id: 1
    })
end

10.times do
    Review.create({
        title: Faker::Music::RockBand.song,
        description: Faker::Quote.yoda,
        likes: rand(5..20),
        author: User.all[1].email,
        team_id: rand(1..23),
        user_id: 2
    })
end




# teams = Team.create([
#     {
#         name: "Manchester United FC",
#         image: 'https://prod.cloud.rockstargames.com/crews/sc/8731/217228/publish/emblem/emblem_256.png'
#         description: "Manchester United Football Club is an English professional football club, based in Old Trafford, Greater Manchester that plays in the Premier League. Founded as Newton Heath LYR Football Club in 1878, the club changed its name to Manchester United in 1902 and moved to Old Trafford in 1910. They are regarded as one of the most successful clubs in English football. Manchester United have won the most League titles (20) of any English club, a joint record 11 FA Cups, four League Cups, and a record 20 FA Community Shields. Manchester United is the third-richest football club in the world for 2011–12 in terms of revenue, with an annual revenue of €395.9 million, and the world's second most valuable sports team in 2013, valued at $3.165 billion. It is one of the most widely supported football teams in the world. After being floated on the London Stock Exchange in 1991, the club was purchased by Malcolm Glazer in May 2005 in a deal valuing the club at almost £800 million, after which the company was taken private again. In August 2012, Manchester United made an initial public offering on the New York Stock Exchange."
#     },
#     {
#         name: "Chelsea FC",
#         image: 'https://iconarchive.com/download/i52558/giannis-zographos/english-football-club/Chelsea-FC.ico',
#         description: "Chelsea Football Club /ˈtʃɛlsiː/ are a professional football club based in Fulham, London, who play in the Premier League, the highest level of English football. Founded in 1905, the club have spent most of their history in the top tier of English football. The club's home ground is the 41,837-seat Stamford Bridge stadium, where they have played since their establishment. Chelsea had their first major success in 1955, winning the league championship, and won various cup competitions during the 1960s, 1970s, 1990s and 2000s. The club have enjoyed their greatest period of success in the past two decades, winning 15 major trophies since 1997. Domestically, Chelsea have won four league titles, seven FA Cups, four League Cups and four FA Community Shields, while in continental competitions they have won two UEFA Cup Winners' Cups, one UEFA Super Cup, one UEFA Europa League and one UEFA Champions League. Chelsea are the only London club to win the UEFA Champions League, and one of four clubs, and the only British club, to have won all three main UEFA club competitions. Chelsea's regular kit colours are royal blue shirts and shorts with white socks. The club's crest has been changed several times in attempts to re-brand the club and modernise its image. The current crest, featuring a ceremonial lion rampant regardant holding a staff, is a modification of the one introduced in the early 1950s. The club have sustained the fifth highest average all-time attendance in English football. Their average home gate for the 2012–13 season was 41,462, the sixth highest in the Premier League. Since July 2003, Chelsea have been owned by Russian billionaire Roman Abramovich. In April 2013 they were ranked by Forbes Magazine as the seventh most valuable football club in the world, at £588 million ($901 million), an increase of 18% from the previous year."
#     },
#     {
#         name: 'Liverpool FC',
#         image: 'https://iconarchive.com/download/i12802/giannis-zographos/liverpool-fc/Liverpool-FC-90s.ico',
#         description: "Liverpool Football Club /ˈlɪvərpuːl/ is a Premier League football club based in Liverpool. Liverpool F.C. is one of the most successful clubs in England and has won more European trophies than any other English team with five European Cups, three UEFA Cups and three UEFA Super Cups. The club has also won eighteen League titles, seven FA Cups and a record eight League Cups. In spite of their successful history, Liverpool are yet to win a Premier League title since its inception in 1992. Liverpool was founded in 1892 and joined the Football League the following year. The club has played at Anfield since its formation. The most successful period in Liverpool's history was the 1970s and '80s when Bill Shankly and Bob Paisley led the club to eleven league titles and seven European trophies. The club's supporters have been involved in two major tragedies. The first was the Heysel Stadium disaster in 1985, during which charging Liverpool fans caused a crush that resulted in a wall collapsing and the death of 39 Juventus supporters, after which English clubs were banned from European competition for five years. In the 1989 Hillsborough disaster, 96 Liverpool supporters lost their lives in a crush against perimeter fencing. Liverpool has long-standing rivalries with neighbours Everton and with Manchester United. The team changed from red shirts and white shorts to an all-red home strip in 1964."
#     },
#     {
#         name: 'Arsenal FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Arsenal-FC-icon.png',
#         description: "Arsenal Football Club is a professional football club based in Islington, London, England, that plays in the Premier League, the top flight of English football. The club has won 13 League titles, a record 13 FA Cups, 2 League Cups, 15 FA Community Shields, 1 League Centenary Trophy, 1 UEFA Cup Winners' Cup and 1 Inter-Cities Fairs Cup. Arsenal was the first club from the South of England to join The Football League, in 1893, and they reached the First Division in 1904. Relegated only once, in 1913, they continue the longest streak in the top division, and have won the second-most top-flight matches in English football history. In the 1930s, Arsenal won five League Championships and two FA Cups, and another FA Cup and two Championships after the war. In 1970–71, they won their first League and FA Cup Double. Between 1989 and 2005, they won five League titles and five FA Cups, including two more Doubles. They completed the 20th century with the highest average league position. Herbert Chapman won Arsenal's first national trophies, but died prematurely. He helped introduce the WM formation, floodlights, and shirt numbers, and added the white sleeves and brighter red to the club's kit. Arsène Wenger was the longest-serving manager and won the most trophies. He won a record 7 FA Cups, and his title-winning team set an English record for the longest top-flight unbeaten league run at 49 games between 2003 and 2004, receiving the nickname The Invincibles. In 1886, Woolwich munitions workers founded the club as Dial Square. In 1913, the club crossed the city to Arsenal Stadium in Highbury, becoming close neighbours of Tottenham Hotspur, and creating the North London derby. In 2006, they moved to the nearby Emirates Stadium. In terms of revenue, Arsenal is the ninth highest-earning football club in the world, earned €487.6m in 2016–17 season. Based on social media activity from 2014 to 2015, Arsenal's fanbase is the fifth largest in the world. In 2018, Forbes estimated the club was the third most valuable in England, with the club being worth $2.24 billion."
#     },
#     {
#         name: 'Manchester City FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Manchester-City-icon.png'
#     },
#     {
#         name: 'Tottenham Hotspur FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Tottenham-Hotspur-icon.png'
#     },
#     {
#         name: 'Leicester City',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Leicester-City-icon.png'
#     },
#     {
#         name: 'Everton FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Everton-FC-icon.png'
#     },
#     {
#         name: 'West Ham United FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/West-Ham-United-icon.png'
#     },
#     {
#         name: 'Leeds United',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Leeds-United-icon.png'
#     },
#     {
#         name: 'Aston Villa FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Aston-Villa-icon.png'
#     },
#     {
#         name: 'Newcastle United FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Newcastle-United-icon.png'
#     },
#     {
#         name: 'Wolverhamp Wanderers FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Wolverhampton-Wanderers-icon.png'
#     },
#     {
#         name: 'Crystal Palace FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Crystal-Palace-icon.png'
#     },
#     {
#         name: 'Southhampton FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Southampton-FC-icon.png'
#     },
#     {
#         name: 'Brighton & Hove Albion FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Brighton-Hove-Albion-icon.png'
#     },
#     {
#         name: 'Burnely FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Burnley-FC-icon.png'
#     },
#     {
#         name: 'Norwhich City FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Norwich-City-icon.png'
#     },
#     {
#         name: 'Watford FC',
#         image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Watford-FC-icon.png'
#     }
# ])


# reviews = Review.create([
#     {
#         title: 'Solid',
#         description: "Solid Defense",
#         likes: 10,
#         team_id: 2,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 1,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 5,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 6,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 4,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 6,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 7,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 8,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 9,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 10,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 11,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 12,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 13,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 14,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 15,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 16,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 17,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 18,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 19,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 20,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 21,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 22,
#         user_id: 1
#     },
#     {
#         title: 'Solid Team',
#         description: Faker::Quote.yoda,
#         likes: 10,
#         team_id: 23,
#         user_id: 1
#     },
#     {
#         title: 'Great Athletes',
#         description: "Manchester United FC is a pretty well-rounded solid team",
#         likes: 10,
#         team_id: 1,
#         user_id: 1
#     },

# ])

puts "seeded"

