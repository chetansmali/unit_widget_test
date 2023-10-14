class UserModel{
  final String name;
  final int id;
  final String email;

  UserModel({required this.name,required this.id,required this.email});

  factory UserModel.formJson(Map<String, dynamic>json){
    return UserModel(name: json['name'], id: json['id'], email: json['email']);
  }

  Map<String,dynamic> toJson(){
    final result = <String,dynamic>{};
    result.addAll({'id' : id});
    result.addAll({'name' : name});
    result.addAll({'email' : email});
    return result;
  }

}