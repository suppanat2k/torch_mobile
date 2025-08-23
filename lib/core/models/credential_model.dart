import 'dart:convert';

CredentialModel credentialModelFromJson(String str) => CredentialModel.fromJson(json.decode(str));

String credentialModelToJson(CredentialModel data) => json.encode(data.toJson());

class CredentialModel {
    final String? accessToken;
    final String? refreshToken;

    CredentialModel({
        this.accessToken,
        this.refreshToken,
    });

    CredentialModel copyWith({
        String? accessToken,
        String? refreshToken,
    }) => 
        CredentialModel(
            accessToken: accessToken ?? this.accessToken,
            refreshToken: refreshToken ?? this.refreshToken,
        );

    factory CredentialModel.fromJson(Map<String, dynamic> json) => CredentialModel(
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "refresh_token": refreshToken,
    };
}
