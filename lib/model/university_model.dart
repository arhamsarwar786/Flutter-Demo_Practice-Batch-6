// To parse this JSON data, do
//
//     final universityModel = universityModelFromJson(jsonString);

import 'dart:convert';

List<UniversityModel> universityModelFromJson(String str) => List<UniversityModel>.from(json.decode(str).map((x) => UniversityModel.fromJson(x)));

String universityModelToJson(List<UniversityModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UniversityModel {
    String alphaTwoCode;
    List<String> webPages;
    String? country;
    List<String> domains;
    String name;
    String? stateProvince;

    UniversityModel({
        required this.alphaTwoCode,
        required this.webPages,
        required this.country,
        required this.domains,
        required this.name,
        required this.stateProvince,
    });

    factory UniversityModel.fromJson(Map<String, dynamic> json) => UniversityModel(
        alphaTwoCode: json["alpha_two_code"],
        webPages: List<String>.from(json["web_pages"].map((x) => x)),
        country: json["country"],
        domains: List<String>.from(json["domains"].map((x) => x)),
        name: json["name"],
        stateProvince: json["state-province"],
    );

    Map<String, dynamic> toJson() => {
        "alpha_two_code": alphaTwoCode,
        "web_pages": List<dynamic>.from(webPages.map((x) => x)),
        "country": country,
        "domains": List<dynamic>.from(domains.map((x) => x)),
        "name": name,
        "state-province": stateProvince,
    };
}
