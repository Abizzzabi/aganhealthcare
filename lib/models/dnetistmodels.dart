// To parse this JSON data, do
//
//     final dentist = dentistFromJson(jsonString);

import 'dart:convert';

Dentist dentistFromJson(String str) => Dentist.fromJson(json.decode(str));

String dentistToJson(Dentist data) => json.encode(data.toJson());

class Dentist {
    List<Datum> data;
    String msg;
    bool status;

    Dentist({
        required this.data,
        required this.msg,
        required this.status,
    });

    factory Dentist.fromJson(Map<String, dynamic> json) => Dentist(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        msg: json["msg"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "msg": msg,
        "status": status,
    };
}

class Datum {
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

    Datum({
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

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
