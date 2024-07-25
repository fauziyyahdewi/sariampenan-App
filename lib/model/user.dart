class User {
  final String id;
  final String name;
  final String phoneNumber;
  final String email;
  final String password;
  final String role;

  User({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.role,
  });

  // Convert a User instance to a Map
  Map<String, String> toMap() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  // Create a User instance from a Map
  factory User.fromMap(Map<String, String> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      role: map['role'] ?? '',
    );
  }

  // Convert a User instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  // Create a User instance from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      role: json['role'] ?? '',
    );
  }
}


List<User> users = [
  User(
      id: '1',
      name: 'Joshua',
      phoneNumber: '1234567890',
      email: 'direksi1@email.com',
      password: '123',
      role: 'direksi'),
  User(
      id: '2',
      name: 'Mingyu',
      phoneNumber: '0987654321',
      email: 'abk1@email.com',
      password: '123',
      role: 'abk'),
  User(
      id: '3',
      name: 'Wonwoo',
      phoneNumber: '1112223334',
      email: 'teknisi1@email.com',
      password: '123',
      role: 'teknisi'),
  User(
      id: '4',
      name: 'Jeonghan',
      phoneNumber: '5556667778',
      email: 'logistic1@email.com',
      password: '123',
      role: 'logistic'),
];
