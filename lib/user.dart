class User {
  final String url;
  final String username;
  final String firstName;
  final String lastName;
  final String email;

  User(
      {
        this.url,
        this.username,
        this.firstName,
        this.lastName,
        this.email
      });


  static List<User> fromJson(List<dynamic> json) {
    List<User> users = new List();
    for (final user in json) {
      users.add(
          new User(
            username: user['username'],
            firstName: user['first_name'],
            lastName: user['last_name'],
            email: user['email'],
            url: user['url'],
          )
      );
    }
    return users;
  }
}

