// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    Data data;
    String msg;
    bool status;

    Profile({
        required this.data,
        required this.msg,
        required this.status,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        data: Data.fromJson(json["data"]),
        msg: json["msg"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "msg": msg,
        "status": status,
    };
}

class Data {
    List<String> modeOfConsultant;
    String id;
    String name;
    String email;
    int age;
    String mobile;
    String gender;
    String experience;
    String qualification;
    String availableTime;
    String clinicName;
    String clinicAddress;
    String aboutus;
    int status;
    String picture;
    int v;

    Data({
        required this.modeOfConsultant,
        required this.id,
        required this.name,
        required this.email,
        required this.age,
        required this.mobile,
        required this.gender,
        required this.experience,
        required this.qualification,
        required this.availableTime,
        required this.clinicName,
        required this.clinicAddress,
        required this.aboutus,
        required this.status,
        required this.picture,
        required this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        modeOfConsultant: List<String>.from(json["mode_of_consultant"].map((x) => x)),
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        age: json["age"],
        mobile: json["mobile"],
        gender: json["gender"],
        experience: json["experience"],
        qualification: json["qualification"],
        availableTime: json["available_time"],
        clinicName: json["clinic_name"],
        clinicAddress: json["clinic_address"],
        aboutus: json["aboutus"],
        status: json["status"],
        picture: json["picture"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "mode_of_consultant": List<dynamic>.from(modeOfConsultant.map((x) => x)),
        "_id": id,
        "name": name,
        "email": email,
        "age": age,
        "mobile": mobile,
        "gender": gender,
        "experience": experience,
        "qualification": qualification,
        "available_time": availableTime,
        "clinic_name": clinicName,
        "clinic_address": clinicAddress,
        "aboutus": aboutus,
        "status": status,
        "picture": picture,
        "__v": v,
    };
}
