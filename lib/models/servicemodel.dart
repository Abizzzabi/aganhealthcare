
class Service {


    Service({
        required this.data,
        required this.msg,
        required this.status,
    });

    List<Datum> data;
    String msg;
    bool status;

    factory Service.fromJson(Map<String, dynamic> json) => Service(
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
    Datum({
        required this.id,
        required this.name,
        required this.picture,
        required this.status,
        required this.v,
    });

    String id;
    String name;
    String picture;
    int status;
    int v;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        name: json["name"],
        picture: json["picture"],
        status: json["status"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "picture": picture,
        "status": status,
        "__v": v,
    };
}
