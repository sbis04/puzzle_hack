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
