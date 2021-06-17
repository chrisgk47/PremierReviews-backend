require 'faker'



teams = Team.create([
    {
        name: "Manchester United FC",
        image: 'https://prod.cloud.rockstargames.com/crews/sc/8731/217228/publish/emblem/emblem_256.png'
    },
    {
        name: "Chelsea FC",
        image: 'https://iconarchive.com/download/i52558/giannis-zographos/english-football-club/Chelsea-FC.ico'
    },
    {
        name: 'Liverpool FC',
        image: 'https://iconarchive.com/download/i12802/giannis-zographos/liverpool-fc/Liverpool-FC-90s.ico'
    },
    {
        name: 'Arsenal FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Arsenal-FC-icon.png'
    },
    {
        name: 'Manchester City FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Manchester-City-icon.png'
    },
    {
        name: 'Tottenham Hotspur FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Tottenham-Hotspur-icon.png'
    },
    {
        name: 'Leicester City',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Leicester-City-icon.png'
    },
    {
        name: 'Everton FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Everton-FC-icon.png'
    },
    {
        name: 'West Ham United FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/West-Ham-United-icon.png'
    },
    {
        name: 'Leeds United',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Leeds-United-icon.png'
    },
    {
        name: 'Aston Villa FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Aston-Villa-icon.png'
    },
    {
        name: 'Newcastle United FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Newcastle-United-icon.png'
    },
    {
        name: 'Wolverhamp Wanderers FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Wolverhampton-Wanderers-icon.png'
    },
    {
        name: 'Crystal Palace FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Crystal-Palace-icon.png'
    },
    {
        name: 'Fulham FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Fulham-FC-icon.png'
    },
    {
        name: 'Southhampton FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Southampton-FC-icon.png'
    },
    {
        name: 'Brighton & Hove Albion FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Brighton-Hove-Albion-icon.png'
    },
    {
        name: 'Burnely FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Burnley-FC-icon.png'
    },
    {
        name: 'Norwhich City FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Norwich-City-icon.png'
    },
    {
        name: 'Sheffield United FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Sheffield-United-icon.png'
    },
    {
        name: 'Watford FC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Watford-FC-icon.png'
    },
    {
        name: 'Swansea City AFC',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Swansea-City-icon.png'
    },
    {
        name: 'Huddersfield Town AFC.',
        image: 'https://icons.iconarchive.com/icons/giannis-zographos/english-football-club/256/Huddersfield-Town-icon.png'
    },
])

User.create([
    {
        username: "chrisk",
        email: "chris.kim1990@gmail.com",
        password_digest: "#{User.digest('kimfam')}"
    }
])
reviews = Review.create([
    {
        title: 'Solid',
        description: "Solid Defense",
        likes: 10,
        team_id: 2,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 1,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 5,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 6,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 4,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 6,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 7,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 8,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 9,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 10,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 11,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 12,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 13,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 14,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 15,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 16,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 17,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 18,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 19,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 20,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 21,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 22,
        user_id: 1
    },
    {
        title: 'Solid Team',
        description: Faker::Quote.yoda,
        likes: 10,
        team_id: 23,
        user_id: 1
    },
    {
        title: 'Great Athletes',
        description: "Manchester United FC is a pretty well-rounded solid team",
        likes: 10,
        team_id: 1,
        user_id: 1
    },

])

puts "seeded"

