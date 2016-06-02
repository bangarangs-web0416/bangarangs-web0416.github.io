spock_description = "Science officer on the Starship Enterprise. Logic
is the foundation of all knowledge, and I have plenty of it."

spock = Author.create(name: "Spock", status: "Admin", description: spock_description)
kirk = Author.create(name: "Kirk")
mc_coy = Author.create(name: "Dr. McCoy")

spocks_blog = Blog.create(author: spock, title: "Spock's Blog")

star_trek_tag = Tag.create(name: "Star Trek")

first_post = Post.create(title: "How to live long and prosper.",
  content: "Be like Spock.", author: spock)
first_post.tags << star_trek_tag

kirks_comment = Comment.create(content: "I agree, Spock.",
  post: first_post, guest: kirk)

second_post = Post.create(title: "My logic",
  content: "The needs of the many outweight the needs of the few",
  image_url: "http://www.integrity-apps.com/wp-content/uploads/2014/09/BlueSpace.jpg",
  author: spock)
second_post.tags << star_trek_tag

spocks_comment = Comment.create(content: "Remember that folks.",
  post: second_post, guest: spock)
mc_coys_comment = Comment.create(content: "Oh please...",
  post: second_post, guest: mc_coy, created_at: Time.now - 1.day)
