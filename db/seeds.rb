require 'faker'
require 'rest-client'

# Team.destroy_all
# Review.destroy_all
# Match.destroy_all
# User.destroy_all
# Team.reset_pk_sequence
# Review.reset_pk_sequence
# Match.reset_pk_sequence
# User.reset_pk_sequence


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
        password_digest: "#{User.digest('kimfam')}",
        profile_img: 'https://ca.slack-edge.com/T02MD9XTF-U01LYNW3TMM-de7dfc536650-512'
    }
])
User.create([
    {
        username: "JamesB",
        email: "JB007@chickmagnet.com",
        password_digest: "#{User.digest('jb007')}",
        profile_img: 'https://pbs.twimg.com/profile_images/2668854518/79fc3605e372a8e1e34693abcf7d7847.jpeg'
    }
])
20.times do
    Review.create({
        title: Faker::Music::RockBand.song,
        description: Faker::Quote.yoda,
        likes: rand(5..20),
        author: User.first.email,
        team_id: rand(1..20),
        user_id: 1,
        score: rand(3..5)
    })
end

20.times do
    Review.create({
        title: Faker::Music::RockBand.song,
        description: Faker::Quote.yoda,
        likes: rand(5..20),
        author: User.all[1].email,
        team_id: rand(1..20),
        user_id: 2,
        score: rand(2..5)
    })
end


puts "Seeding Complete"
