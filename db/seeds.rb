spock_description = "Science officer on the Starship Enterprise. Logic
is the foundation of all knowledge, and I have plenty of it."

spock = Author.create(name: "Spock", status: "Admin", description: spock_description, slogan: "Live long and prosper")
kirk = Author.create(name: "Kirk")
mc_coy = Author.create(name: "Dr. McCoy")

spocks_blog = Blog.create(author: spock, title: "Spock's Blog")

star_trek_tag = Tag.create(name: "Star Trek")

first_post = Post.create(title: "How to live long and prosper.",
  content: "Be like Spock.", author: spock)
first_post.tags << star_trek_tag

kirks_comment = Comment.create(content: "I agree, Spock.",
  post: first_post, author: kirk)

second_post = Post.create(title: "My logic",
  content: "The needs of the many outweigh the needs of the few",
  author: spock)
second_post.tags << star_trek_tag

spocks_comment = Comment.create(content: "Remember that folks.",
  post: second_post, author: spock)
mc_coys_comment = Comment.create(content: "Oh please...",
  post: second_post, author: mc_coy, created_at: Time.now - 1.day)

  guide_post_title = "In Defense of Reinventing the Wheel"
  guide_post_content = "<p>'Why would you re-invent the wheel?'</p>

  <p>There are plenty of reasons not to. The developer community has collectively found efficient solutions to problems, from encrypting passwords, managing log ins and sessions, to communicating with databases. Imagine a world where web developers had to know and operate all the intricacies of creating, hosting, and serving web sites. The web would be a different (and much less useful) place. There is power in numbers, let's use that.</p>

  <p>Many of the solutions created for use by web developers have been used to create this blog. The backend is powered by rails, a ruby framework that operates on classic Model View Controller (MVC) principles.</p>

  <p>Nonetheless, there is something to be said for re-inventing the wheel. You don't tell kids learning basic arithmetic to just use a calculator, someone's already figured that stuff out for you! Reinventing the “wheels” of a craft is the most efficient and interesting way of learning it, I think.</p>

  <p>Think of this blog like such a wheel. It has been written to be as simple as possible while including as many of the core concepts of building a rails application as possible.</p>

  <p>Generating a new rails app</p>
  <p>The geography of a rails app</p>
  <p>Setting up a database with ActiveRecord in Rails</p>
  <p><a href='/posts/3' data-remote='true' >The ERD database visualization gem</a></p>
  <p>Using bootstrap with rails</p>
  <p>ERB partials</p>
  <p>Using Custom CSS in rails</p>
  <p>Creating a repeating background using CSS</p>
  <p>Using AJAX to render ERB partials</p>

  <p>I expect this list will grow as I (and maybe you!) revise these concepts and make further changes to the blog. Check out the github repo for this project to make your own contribution.</p>"

  guide_post = Post.create(title: guide_post_title,
    content: guide_post_content,
    author: spock,
    image_url: "/assets/wheel-75b77b259e2be7ab84b9e2569b4619e2d3403f0d445c68807d4f9abf12523599.jpg")
