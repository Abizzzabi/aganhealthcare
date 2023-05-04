// To parse this JSON data, do
//
//     final option = optionFromJson(jsonString);

import 'dart:convert';

Option optionFromJson(String str) => Option.fromJson(json.decode(str));

String optionToJson(Option data) => json.encode(data.toJson());

class Option {
    Data data;
    String msg;
    bool status;

    Option({
        required this.data,
        required this.msg,
        required this.status,
    });

    factory Option.fromJson(Map<String, dynamic> json) => Option(
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
    String id;
    String employeeId;
    String serviceId;
    String doctorId;
    DateTime date;
    String appointmentFor;
    String description;
    int status;
    String familyId;
    int v;

    Data({
        required this.id,
        required this.employeeId,
        required this.serviceId,
        required this.doctorId,
        required this.date,
        required this.appointmentFor,
        required this.description,
        required this.status,
        required this.familyId,
        required this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        employeeId: json["employee_id"],
        serviceId: json["service_id"],
        doctorId: json["doctor_id"],
        date: DateTime.parse(json["date"]),
        appointmentFor: json["appointment_for"],
        description: json["description"],
        status: json["status"],
        familyId: json["family_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "employee_id": employeeId,
        "service_id": serviceId,
        "doctor_id": doctorId,
        "date": date.toIso8601String(),
        "appointment_for": appointmentFor,
        "description": description,
        "status": status,
        "family_id": familyId,
        "__v": v,
    };
}
