class User {
  User(this.email);

  String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User && runtimeType == other.runtimeType && email == other.email;

  @override
  int get hashCode => email.hashCode;
}

class AdminUser extends User with MailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

mixin MailSystem on User {
  String getMailSystem() {
    return email.split('@').last;
  }
}

class UserManager<T extends User> {
  List<T> users = [];

  add(T user) {
    users.add(user);
  }

  remove(T user) {
    users.remove(user);
  }

  void getAllMails() {
    for (var user in users) {
      if (user is AdminUser) print(user.getMailSystem());
      else print(user.email);
    }
  }
}
