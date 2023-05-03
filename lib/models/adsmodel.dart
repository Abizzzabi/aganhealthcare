// To parse this JSON data, do
//
//     final ads = adsFromJson(jsonString);

import 'dart:convert';

Ads adsFromJson(String str) => Ads.fromJson(json.decode(str));

String adsToJson(Ads data) => json.encode(data.toJson());

class Ads {
    List<Datum> data;
    String msg;
    bool status;

    Ads({
        required this.data,
        required this.msg,
        required this.status,
    });

    factory Ads.fromJson(Map<String, dynamic> json) => Ads(
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
    String id;
    String picture;
    DateTime date;
    int status;
    int v;

    Datum({
        required this.id,
        required this.picture,
        required this.date,
        required this.status,
        required this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        picture: json["picture"],
        date: DateTime.parse(json["date"]),
        status: json["status"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "picture": picture,
        "date": date.toIso8601String(),
        "status": status,
        "__v": v,
    };
}
