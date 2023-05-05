// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

History historyFromJson(String str) => History.fromJson(json.decode(str));

String historyToJson(History data) => json.encode(data.toJson());

class History {
    List<Datum> data;
    String msg;
    bool status;

    History({
        required this.data,
        required this.msg,
        required this.status,
    });

    factory History.fromJson(Map<String, dynamic> json) => History(
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
    String empEname;
    String appointmentFor;
    String company;
    DateTime date;
    String doctor;
    String service;

    Datum({
        required this.id,
        required this.empEname,
        required this.appointmentFor,
        required this.company,
        required this.date,
        required this.doctor,
        required this.service,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        empEname: json["emp_ename"],
        appointmentFor: json["appointment_for"],
        company: json["company"],
        date: DateTime.parse(json["date"]),
        doctor: json["doctor"],
        service: json["service"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "emp_ename": empEname,
        "appointment_for": appointmentFor,
        "company": company,
        "date": date.toIso8601String(),
        "doctor": doctor,
        "service": service,
    };
}
