import 'dart:convert';

ApiResponseModel apiResponseModelFromJson(String str) => ApiResponseModel.fromJson(json.decode(str));

String apiResponseModelToJson(ApiResponseModel data) => json.encode(data.toJson());

class ApiResponseModel {
    final int? code;
    final String? message;
    final dynamic data;

    ApiResponseModel({
        this.code,
        this.message,
        this.data,
    });

    ApiResponseModel copyWith({
        int? code,
        String? message,
        dynamic data,
    }) => 
        ApiResponseModel(
            code: code ?? this.code,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory ApiResponseModel.fromJson(Map<String, dynamic> json) => ApiResponseModel(
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
