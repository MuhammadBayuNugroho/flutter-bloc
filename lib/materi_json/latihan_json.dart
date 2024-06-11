import "dart:convert";

void main(List<String> args) {
  const String jsonString = """
{
  "name": "Bayu",
  "email": "211240001153@unisnu.ac.id",
  "age": 20,  
  "registration_date_milis": 123456789
}
""";

  Map<String, dynamic> user = jsonDecode(jsonString);

  print("Hallo, ${user['name']}");
  print("Email verification link sent to : ${user['email']}");

  String json = jsonEncode(user);

  print("String json: $json");
}
