user1 = User.create(first_name: "joe", last_name: "joe", username: "joe", email: "joe@gmail.com", password: "password")
user2 = User.create(first_name: "kiv", last_name: "joe", username: "kiv", email: "kiv@gmail.com", password: "password")
user3 = User.create(first_name: "carlos", last_name: "joe", username: "carlos", email: "carlos@gmail.com", password: "password")
user4 = User.create(first_name: "alex", last_name: "joe", username: "alex", email: "alex@gmail.com", password: "password")
user5 = User.create(first_name: "jason", last_name: "joe", username: "jason", email: "jason@gmail.com", password: "password")
user6 = User.create(first_name: "tom", last_name: "joe", username: "tom", email: "tom@gmail.com", password: "password")
skill = Skill.create(title: "test", category: "testing")
# post = skill.
# user.apprenticeships.create(requestor_id: 1, post_id: 1)

Skill.create(title: "String", category: "Music")
Skill.create(title: "Brass", category: "Music")
Skill.create(title: "Woodwind", category: "Music")
Skill.create(title: "Percussion", category: "Music")
Skill.create(title: "Keyboard", category: "Music")
Skill.create(title: "Music Production", category: "Music")
Skill.create(title: "Ear Pitch", category: "Music")
Skill.create(title: "Composition", category: "Music")
Skill.create(title: "Improvisation", category: "Music")
Skill.create(title: "Other", category: "Music")

Skill.create(title: "Aquatic Sports", category: "Sports")
Skill.create(title: "Gymnastics", category: "Sports")
Skill.create(title: "Martial Arts", category: "Sports")
Skill.create(title: "Track and Field", category: "Sports")
Skill.create(title: "X-Games", category: "Sports")
Skill.create(title: "Teams Sports", category: "Sports")
Skill.create(title: "Other", category: "Sports")

Skill.create(title: "Dieting", category: "Fitness")
Skill.create(title: "Cardio", category: "Fitness")
Skill.create(title: "Weightlifting", category: "Fitness")
Skill.create(title: "Nutrition", category: "Fitness")
Skill.create(title: "Supplements", category: "Fitness")
Skill.create(title: "Other", category: "Fitness")

Skill.create(title: "SAT", category: "Education")
Skill.create(title: "GED", category: "Education")
Skill.create(title: "Science", category: "Education")
Skill.create(title: "Problem Solving", category: "Education")
Skill.create(title: "Other", category: "Education")

Skill.create(title: "Asian Cusine", category: "Cooking")
Skill.create(title: "South American Cusine", category: "Cooking")
Skill.create(title: "Pasta 101", category: "Cooking")
Skill.create(title: "Mixology", category: "Cooking")
Skill.create(title: "Bartending", category: "Cooking")
Skill.create(title: "Italian Cusine", category: "Cooking")
Skill.create(title: "Wine Tasting", category: "Cooking")
Skill.create(title: "Other", category: "Cooking")

Skill.create(title: "Computer Programming", category: "Technology")
Skill.create(title: "Engineering", category: "Technology")
Skill.create(title: "Web Design", category: "Technology")
Skill.create(title: "UI/UX", category: "Technology")
Skill.create(title: "Big Data", category: "Technology")
Skill.create(title: "Other", category: "Technology")



Post.create(skill_id: 1, creator_id: 1, description: "Holding the instrument")
Post.create(skill_id: 2, creator_id: 2, description: "Press the buttons")
Post.create(skill_id: 3, creator_id: 3, description: "Piccolo")
Post.create(skill_id: 4, creator_id: 4, description: "Pressing Keys")
Post.create(skill_id: 15, creator_id: 5, description: "Running")
Post.create(skill_id: 24, creator_id: 6, description: "It's a secret")
Post.create(skill_id: 16, creator_id: 1, description: "Sinister and blue near the vapors
I stroke quaking thoughts among the light
Awaken! The vision keeps going
So mournful over the rain")
Post.create(skill_id: 19, creator_id: 2, description: "You transform numb tomb stones beneath the towers
Be transparent. The lust keeps going
So arid against the shadows
You battle wanting eyes beside the wind")
Post.create(skill_id: 23, creator_id: 3, description: "Alass! The Queen will vanish
unsure restless 
a long way from home 
no way out 
Down what streets 
the lover 
turn aside 
when the world was new")
Post.create(skill_id: 13, creator_id: 4, description: "Strangely poisonous before the mud
We smear electric weirdness within the air
Be watchful. The twilight is good
We are transparent beyond the land
We ensnare flying knives within the air
Atone! The demon will come again
I am blue below the bullshit
I dream of lustful meaning about the air
We Reach! The day is no more
clouded unsafe 
fading slowly ")
Post.create(skill_id: 12, creator_id: 5, description: "a phone ringing somewhere 
From which dreams 
such a man 

")
Post.create(skill_id: 28, creator_id: 6, description: "seek shelter 
never knowing how")




