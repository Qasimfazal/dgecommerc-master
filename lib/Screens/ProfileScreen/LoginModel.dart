///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class SomeRootEntityUser {
/*
{
  "id": 92,
  "type": "customer",
  "name": "Raza Ahmed",
  "email": "ra@digitalgraphiks.pk",
  "avatar": null,
  "avatar_original": "",
  "phone": "+1310-280-7722"
}
*/

  int? id;
  String? type;
  String? name;
  String? email;
  String? avatar;
  String? avatar_original;
  String? phone;

  SomeRootEntityUser({
    this.id,
    this.type,
    this.name,
    this.email,
    this.avatar,
    this.avatar_original,
    this.phone,
  });
  SomeRootEntityUser.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    type = json['type']?.toString();
    name = json['name']?.toString();
    email = json['email']?.toString();
    avatar = json['avatar']?.toString();
    avatar_original = json['avatar_original']?.toString();
    phone = json['phone']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['email'] = email;
    data['avatar'] = avatar;
    data['avatar_original'] = avatar_original;
    data['phone'] = phone;
    return data;
  }
}

class LoginModel {
/*
{
  "result": true,
  "message": "Successfully logged in",
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImExNmZjYjQ2OWM5NDMzMGU4NzE2MDJhYTAyNzg3ZTYyZjU0M2IzOGQ2ZGNhODQzY2E2YmIxNTFiMjEyOThlYmJiYTkzOGFhODQ1MDRhYzlkIn0.eyJhdWQiOiIxIiwianRpIjoiYTE2ZmNiNDY5Yzk0MzMwZTg3MTYwMmFhMDI3ODdlNjJmNTQzYjM4ZDZkY2E4NDNjYTZiYjE1MWIyMTI5OGViYmJhOTM4YWE4NDUwNGFjOWQiLCJpYXQiOjE2NjU2NDg4NjIsIm5iZiI6MTY2NTY0ODg2MiwiZXhwIjoxNjk3MTg0ODYxLCJzdWIiOiI5MiIsInNjb3BlcyI6W119.B32kZjht6G3mKXZB6BqUfgkAkyWYdx1-JlzrsG0J9tg7YPYzcWbanKCm3AkjHgPAgccOqbDdnHvZCk7UfdZAI1Dy6bqX2ojcFMN9Kk12SizavBPnt2Kn9FYsbrZBejLiBOdrUdGGPy7Et4bH6igwjbPrpL2mw2Lp2Hwj7NiICXslN7cfBzliZn3zpiZYStM65RvJXl4nmFyMQjnbkup0EIqCNVKHHa9Ui03qLsVUVH2QISjgvCfnbU0leayHsNtNLSdLUMTnvNoJmc94YQRbhijkcHA5LYVr8sbYM1Cg9b_o30nsO7NP6ocLJdvflBgow-dZ6cQnNDVheuvfh0N1ixMZCJe0pK1R2VfEMi7II8WHopvPRz8WiBwQITOclbnGd3xPhlEJ801FqS_yvDOGEu4OVPfwPUVbz2eYRPu_sc9rfqk7hE3RBwr2OR3hnplOlkYq_GverZZv1DnaM1Y10J-1IgImWaor5HbTOgMEV0x186Ad471jPbxJsD4cfYksYMEmnFUmoDCBgoWno6KNqJQninFwFHnD_7jjDo3oOCVBJ9ZvFre9GtBs5LCF5Iz2VxySr1vvC5QOAgP0JD7o5LfP_2CjFV_0NTfNV1WYu0O0J89UOTzEbA1EJJXxpml43SKwg2wsQqfSZVBG6XPUGsav2-C3NrA5jhsF6W5IU-Y",
  "token_type": "Bearer",
  "expires_at": "2024-09-12 08:14:22",
  "user": {
    "id": 92,
    "type": "customer",
    "name": "Raza Ahmed",
    "email": "ra@digitalgraphiks.pk",
    "avatar": null,
    "avatar_original": "",
    "phone": "+1310-280-7722"
  }
}
*/

  bool? result;
  String? message;
  String? access_token;
  String? token_type;
  String? expires_at;
  SomeRootEntityUser? user;

  LoginModel({
    this.result,
    this.message,
    this.access_token,
    this.token_type,
    this.expires_at,
    this.user,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message']?.toString();
    access_token = json['access_token']?.toString();
    token_type = json['token_type']?.toString();
    expires_at = json['expires_at']?.toString();
    user = (json['user'] != null) ? SomeRootEntityUser.fromJson(json['user']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['result'] = result;
    data['message'] = message;
    data['access_token'] = access_token;
    data['token_type'] = token_type;
    data['expires_at'] = expires_at;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
