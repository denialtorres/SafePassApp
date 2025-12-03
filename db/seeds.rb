Entry.destroy_all

user = User.first

common = { username: user.email, password: "Password123!", user: user }
entries = [
  { name: "GitHub", url: "https://www.github.com/login" },
  { name: "Stack Overflow", url: "https://stackoverflow.com/users/login" },
  { name: "Dribbble", url: "https://dribbble.com/session/new" },
  { name: "Facebook", url: "https://www.facebook.com" },
  { name: "X", url: "https://www.x.com" },
  { name: "Udemy", url: "https://udemy.com/login" },
  { name: "LinkedIn", url: "https://www.linkedin.com" },
  { name: "Instagram", url: "https://www.instagram.com" },
  { name: "Reddit", url: "https://www.reddit.com" },
  { name: "YouTube", url: "https://www.youtube.com" },
  { name: "Amazon", url: "https://www.amazon.com" },
  { name: "Netflix", url: "https://www.netflix.com" },
  { name: "Spotify", url: "https://www.spotify.com" },
  { name: "Slack", url: "https://www.slack.com" },
  { name: "Trello", url: "https://www.trello.com" },
  { name: "Dropbox", url: "https://www.dropbox.com" },
  { name: "Pinterest", url: "https://www.pinterest.com" }
]

entries.each do |entry|
  entry_data = entry.merge(common)
  created_entry = Entry.create(entry_data)
  puts created_entry.inspect
end
