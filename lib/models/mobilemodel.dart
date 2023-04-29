

// To parse this JSON data, do
//
//     final mobile = mobileFromJson(jsonString);

import 'dart:convert';

Mobile mobileFromJson(String str) => Mobile.fromJson(json.decode(str));

String mobileToJson(Mobile data) => json.encode(data.toJson());

class Mobile {
    String msg;
    bool status;

    Mobile({
        required this.msg,
        required this.status,
    });

    factory Mobile.fromJson(Map<String, dynamic> json) => Mobile(
        msg: json["msg"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "status": status,
    };
}
