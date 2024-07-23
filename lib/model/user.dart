class User {
  final String userId;
  final String name;
  final String phoneNumber;
  final String email;
  final String password;
  final String role;

  User(this.userId, this.name, this.phoneNumber, this.email, this.password, this.role);
}

final List<User> dummyDataUser = [
  User('1', 'Direksi1', '1234567890', 'direksi1@email.com', '123', 'direksi'),
  User('2', 'Abk1', '0987654321', 'abk1@email.com', '123', 'abk'),
  User('3', 'Teknisi1', '1112223334', 'teknisi1@email.com', '123', 'teknisi'),
  User('4', 'Logistic1', '5556667778', 'logistic1@email.com', '123', 'logistic'),
];