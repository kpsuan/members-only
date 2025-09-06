user = User.create!(email: "test@example.com", password: "password", password_confirmation: "password")

Post.create!(title: "My First Secret Post", content: "This is a members-only secret!", user: user)
Post.create!(title: "Another Secret", content: "Only members can see me!", user: user)
