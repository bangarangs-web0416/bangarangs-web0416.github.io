spock = Author.create(name: "Spock", status: "Admin")
kirk = Author.create(name: "Kirk")

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
