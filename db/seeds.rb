User.destroy_all

User.create([
  {
    email: "joe@munat.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
    email: "jane@munat.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
    email: "timmy@munat.com",
    password: "12345",
    password_confirmation: "12345"
  }
])