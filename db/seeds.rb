# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Developers
# 100.times do |iter|
#   Developer.create(
#     email: "developer_email#{iter}@developers.com",
#     username: "developer#{iter}",
#     password: 'password',
#     password_confirmation: 'password',
#     bio: "This developer number#{iter} bio",
#     bersonal_website_link: 'wwww.example.come',
#     facebook_link: 'facebook.com/profile',
#     twitter_link: 'twitter.com/profile',
#     linkedin_link: 'linkedin.com/profile',
#     stackoverflow_link: 'stackoverflow.com/profile',
#     github_link: 'github/profile'
#   )
# end

Developer.create(
  email: 'aaa.shawareb@gmail.com',
  username: 'ashawareb',
  password: 'password',
  password_confirmation: 'password',
  bio: 'Software Engineer at UMAI | Rubyist',
  bersonal_website_link: 'https://ashawareb.hashnode.dev/',
  facebook_link: 'https://www.facebook.com/ashawarebb/',
  twitter_link: 'https://twitter.com/ashawarebb',
  linkedin_link: 'https://www.linkedin.com/in/abdulrahman-shawareb/',
  stackoverflow_link: 'https://stackoverflow.com/users/14359742/abdulrahman-shawareb',
  github_link: 'https://github.com/ashawareb'
)

Developer.create(
  email: 'ammar.ibrahim@gmail.com',
  username: 'ammar',
  password: 'password',
  password_confirmation: 'password',
  bio: 'IS student',
  bersonal_website_link: 'https://ashawareb.hashnode.dev/',
  facebook_link: 'https://www.facebook.com/ashawarebb/',
  twitter_link: 'https://twitter.com/ashawarebb',
  linkedin_link: 'https://www.linkedin.com/in/abdulrahman-shawareb/',
  stackoverflow_link: 'https://stackoverflow.com/users/14359742/abdulrahman-shawareb',
  github_link: 'https://github.com/ashawareb'
)

Developer.create(
  email: 'sherif.hesham@gmail.com',
  username: 'sherif',
  password: 'password',
  password_confirmation: 'password',
  bio: 'IS student',
  bersonal_website_link: 'https://ashawareb.hashnode.dev/',
  facebook_link: 'https://www.facebook.com/ashawarebb/',
  twitter_link: 'https://twitter.com/ashawarebb',
  linkedin_link: 'https://www.linkedin.com/in/abdulrahman-shawareb/',
  stackoverflow_link: 'https://stackoverflow.com/users/14359742/abdulrahman-shawareb',
  github_link: 'https://github.com/ashawareb'
)

Developer.create(
  email: 'nada.saber@gmail.com',
  username: 'nada',
  password: 'password',
  password_confirmation: 'password',
  bio: 'IS student',
  bersonal_website_link: 'https://ashawareb.hashnode.dev/',
  facebook_link: 'https://www.facebook.com/ashawarebb/',
  twitter_link: 'https://twitter.com/ashawarebb',
  linkedin_link: 'https://www.linkedin.com/in/abdulrahman-shawareb/',
  stackoverflow_link: 'https://stackoverflow.com/users/14359742/abdulrahman-shawareb',
  github_link: 'https://github.com/ashawareb'
)

Developer.create(
  email: 'rehab.rabie@gmail.com',
  username: 'rehab',
  password: 'password',
  password_confirmation: 'password',
  bio: 'IS student',
  bersonal_website_link: 'https://ashawareb.hashnode.dev/',
  facebook_link: 'https://www.facebook.com/ashawarebb/',
  twitter_link: 'https://twitter.com/ashawarebb',
  linkedin_link: 'https://www.linkedin.com/in/abdulrahman-shawareb/',
  stackoverflow_link: 'https://stackoverflow.com/users/14359742/abdulrahman-shawareb',
  github_link: 'https://github.com/ashawareb'
)

# Create Compamies
Company.create(
  name: 'Google',
  email: 'google@google.com',
  password: 'password',
  password_confirmation: 'password'
)

Company.create(
  name: 'Microsoft',
  email: 'microsoft@microsoft.com',
  password: 'password',
  password_confirmation: 'password'
)

# Create Topics
Topic.create(name: 'Algorithms')
Topic.create(name: 'Data Structure')
Topic.create(name: 'Databases')
Topic.create(name: 'System Design')
Topic.create(name: 'Ruby')
Topic.create(name: 'Java')
Topic.create(name: 'JavaScript')
Topic.create(name: 'SQL')

# Create Roadmaps
Roadmap.create(title: 'Algorithms', description: 'Master essential algorithms needed in your daily job', topic_id: 1)
Roadmap.create(title: 'Data Structure', description: 'Must-know, essential data structures', topic_id: 2)
Roadmap.create(title: 'DBA', description: 'Step by step guide to becoming a DB Administrator in 2022', topic_id: 3)
Roadmap.create(title: 'Ruby/Rails', description: 'Step by step to become ruby on rails developer in 2022', topic_id: 5)
Roadmap.create(title: 'Java', description: 'Step by step guide to becoming a Java developer in 2022', topic_id: 6)

# Algorithm Roadmap basic leve, and basic leve resources
Level.create(title: 'Basic', roadmap_id: 1)
# -- resources -- #
Resource.create(title: 'Time complexity analysis - mycodeschool',
                url: 'https://www.youtube.com/playlist?list=PL2_aWCzGMAwI9HK8YPVBjElbLbI3ufctn', estimated_time: 4, level_id: 1)
Resource.create(title: 'Mathematical algorithms - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/?ref=ghm', estimated_time: 10, level_id: 1)

# Algorithm Roadmap intermediate leve, and basic leve resources
Level.create(title: 'Intermediate', roadmap_id: 1)
# -- resources --#
Resource.create(title: 'Searching algorithms - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/greedy-algorithms/?ref=ghm', estimated_time: 20, level_id: 2)
Resource.create(title: 'Sorting algorithms - mycodeschool',
                url: 'https://www.youtube.com/playlist?list=PL2_aWCzGMAwKedT2KfDMB9YA5DgASZb3U', estimated_time: 10, level_id: 2)

# Algorithm Roadmap advanced leve, and basic leve resources
Level.create(title: 'Advanced', roadmap_id: 1)
Resource.create(title: 'Greedy algorithms - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/searching-algorithms/?ref=ghm', estimated_time: 40, level_id: 3)
Resource.create(title: 'Graph algorithms - mycodeschool',
                url: 'https://www.youtube.com/playlist?list=PL2_aWCzGMAwKedT2KfDMB9YA5DgASZb3U', estimated_time: 40, level_id: 3)

# Data Structure Roadmap basic leve, and basic leve resources
Level.create(title: 'Basic', roadmap_id: 2)
Resource.create(title: 'Introduction - mycodeschool',
                url: 'https://www.youtube.com/playlist?list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P', estimated_time: 1, level_id: 4)
Resource.create(title: 'Arrays - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/array-data-structure/?ref=ghm', estimated_time: 2, level_id: 4)
Resource.create(title: 'Linked list - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/data-structures/linked-list/?ref=ghm', estimated_time: 4, level_id: 4)
Resource.create(title: 'Stack - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/stack-data-structure/?ref=ghm', estimated_time: 2, level_id: 4)
Resource.create(title: 'Queue - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/queue-data-structure/?ref=ghm', estimated_time: 2, level_id: 4)

# Data Structure Roadmap inermediate leve, and intermediate leve resources
Level.create(title: 'Intermediate', roadmap_id: 2)
Resource.create(title: 'Binary tree - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/binary-tree-data-structure/?ref=ghm', estimated_time: 8, level_id: 5)
Resource.create(title: 'Binary search tree - Geeks4Geeks',
                url: 'geeksforgeeks.org/binary-search-tree-data-structure/?ref=ghm', estimated_time: 8, level_id: 5)

# Data Structure Roadmap advanced leve, and advanced leve resources
Level.create(title: 'Advanced', roadmap_id: 2)
Resource.create(title: 'Graph - Geeks4Geeks',
                url: 'https://www.geeksforgeeks.org/graph-data-structure-and-algorithms/?ref=ghm', estimated_time: 15, level_id: 6)

# Level.create(title: 'Basic', roadmap_id: 3)
# Level.create(title: 'Intermediate', roadmap_id: 3)
# Level.create(title: 'Advanced', roadmap_id: 3)

# Level.create(title: 'Basic', roadmap_id: 4)
# Level.create(title: 'Intermediate', roadmap_id: 4)
# Level.create(title: 'Advanced', roadmap_id: 4)

# Level.create(title: 'Basic', roadmap_id: 5)
# Level.create(title: 'Intermediate', roadmap_id: 5)
# Level.create(title: 'Advanced', roadmap_id: 5)

# Create Problems
10.times do |iter|
  Problem.create(
    title: "Problem number #{iter} title",
    body: "This is Problem number #{iter} body",
    difficullty: :easy,
    memory_limit: 64,
    time_limit: 1,
    topic_id: 3,
    company_id: 1
  )
end

Problem.create(
  title: 'Watermelon',
  body: "One hot summer day Pete and his friend Billy decided to buy a watermelon. They chose the biggest and the ripest one, in their opinion. After that the watermelon was weighed, and the scales showed w kilos. They rushed home, dying of thirst, and decided to divide the berry, however they faced a hard problem.\nPete and Billy are great fans of even numbers, that's why they want to divide the watermelon in such a way that each of the two parts weighs even number of kilos, at the same time it is not obligatory that the parts are equal. The boys are extremely tired and want to start their meal as soon as possible, that's why you should help them and find out, if they can divide the watermelon in the way they want. For sure, each of them should get a part of positive weight.",
  input_description: "The first (and the only) input line contains integer number w (1 ≤ w ≤ 100) — the weight of the watermelon bought by the boys.",
  output_description: "Print YES, if the boys can divide the watermelon into two parts, each of them weighing even number of kilos; and NO in the opposite case.",
  input: 'input',
  output: '8',
  notes: 'For example, the boys can divide the watermelon into two parts of 2 and 6 kilos respectively (another variant — two parts of 4 and 4 kilos).',
  score: 10.0,
  difficullty: 'Easy',
  time_limit: 1,
  memory_limit: 64,
  topic_id: 1,
  company_id: 2
)

Problem.create(
  title: 'Hello World',
  body: "Let's get started with Ruby!\nGo ahead and type the following code in the code-editor:",
  input_description: "puts 'Hello, World!'",
  output_description: "",
  input: '-',
  output: 'Hello, World!',
  notes: '',
  score: 10.0,
  difficullty: 'Easy',
  time_limit: 1,
  memory_limit: 64,
  topic_id: 5,
  company_id: 1
)

Problem.create(
  title: 'Everything is object',
  body: "Everything is an object in Ruby. For instance, if you type\nputs self\nin the code-editor, Ruby treats self as the object in which it is currently referred to.\nGive it a try!",
  input_description: "",
  output_description: "",
  input: '-',
  output: 'main',
  notes: '',
  score: 10.0,
  difficullty: 'Easy',
  time_limit: 1,
  memory_limit: 64,
  topic_id: 5,
  company_id: 1
)

Problem.create(
  title: 'Is even?',
  body: "Each object in Ruby may have methods associated with it. To demonstrate this, we want you to print whether a number is even or odd. A number has an even? method associated with it, which returns true or false based on the parity of the number.\nAssuming a variable number is already defined, check whether a given number is even or not.\nHint\nType in the code-editor\nreturn number.even? or number.even?",
  input_description: "The first line of input contains an integer (n). The next (n) contains one integer in each line.",
  output_description: "The output is handled by the code written in the editor.",
  input: '8',
  output: 'true',
  notes: '',
  score: 10.0,
  difficullty: 'Easy',
  time_limit: 1,
  memory_limit: 64,
  topic_id: 5,
  company_id: 1
)

ProgrammingLanguge.create(name: 'C (GCC 7.4.0)', judge_code: 48, extension: 'c')
ProgrammingLanguge.create(name: 'C++ (GCC 7.4.0)', judge_code: 52, extension: 'cpp')
ProgrammingLanguge.create(name: 'Java (OpenJDK 13.0.1)', judge_code: 62, extension: 'java')
ProgrammingLanguge.create(name: 'Python (3.8.1)', judge_code: 71, extension: 'python')
ProgrammingLanguge.create(name: 'Ruby (2.7.0)', judge_code: 72, extension: 'ruby')
ProgrammingLanguge.create(name: 'JavaScript (Node.js 12.14.0)', judge_code: 63, extension: 'javascript')
