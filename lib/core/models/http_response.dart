import 'dart:convert';

HttpResponse httpResponseFromJson(String str) => HttpResponse.fromJson(json.decode(str));

String httpResponseToJson(HttpResponse data) => json.encode(data.toJson());

class HttpResponse {
    final int? code;
    final String? message;
    final dynamic data;

    HttpResponse({
        this.code,
        this.message,
        this.data,
    });

    HttpResponse copyWith({
        int? code,
        String? message,
        dynamic data,
    }) => 
        HttpResponse(
            code: code ?? this.code,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory HttpResponse.fromJson(Map<String, dynamic> json) => HttpResponse(
        code: json["code"],
        message: json["message"],
        data: json["data"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data,
    };
}
