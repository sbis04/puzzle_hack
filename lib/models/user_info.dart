class UserData {
  final String uid;
  final String name;
  final String username;
  final int timestamp;

  UserData({
    required this.uid,
    required this.name,
    required this.username,
    required this.timestamp,
  });

  UserData.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        name = json['name'],
        username = json['username'],
        timestamp = json['timestamp'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'name': name,
        'username': username,
        'timestamp': timestamp,
      };
}

class EUserData {
  final String uid;
  final String username;
  final String email;
  final int timestamp;

  EUserData({
    required this.uid,
    required this.username,
    required this.email,
    required this.timestamp,
  });

  EUserData.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        username = json['username'],
        email = json['email'],
        timestamp = json['timestamp'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'email': email,
        'timestamp': timestamp,
      };
}
