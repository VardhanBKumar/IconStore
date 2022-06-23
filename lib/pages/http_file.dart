// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
   required this.iconsets,
    required this.totalCount,
  });

  List<Iconset> iconsets;
  int totalCount;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    iconsets: List<Iconset>.from(json["iconsets"].map((x) => Iconset.fromJson(x))),
    totalCount: json["total_count"],
  );

  Map<String, dynamic> toJson() => {
    "iconsets": List<dynamic>.from(iconsets.map((x) => x.toJson())),
    "total_count": totalCount,
  };
}

class Iconset {
  Iconset({
    required this.iconsetId,
   required this.styles,
    required this.type,
    required this.prices,
    required this.categories,
    required this.author,
    required this.isPremium,
    required this.areAllIconsGlyph,
    required this.name,
    required this.iconsCount,
    required this.publishedAt,
    required this.identifier,
  });

  int iconsetId;
  List<dynamic> styles;
  String type;
  List<Price> prices;
  List<dynamic> categories;
  Author author;
  bool isPremium;
  bool areAllIconsGlyph;
  String name;
  int iconsCount;
  DateTime publishedAt;
  String identifier;

  factory Iconset.fromJson(Map<String, dynamic> json) => Iconset(
    iconsetId: json["iconset_id"],
    styles: List<dynamic>.from(json["styles"].map((x) => x)),
    type: json["type"],
    prices: List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    author: Author.fromJson(json["author"]),
    isPremium: json["is_premium"],
    areAllIconsGlyph: json["are_all_icons_glyph"],
    name: json["name"],
    iconsCount: json["icons_count"],
    publishedAt: DateTime.parse(json["published_at"]),
    identifier: json["identifier"],
  );

  Map<String, dynamic> toJson() => {
    "iconset_id": iconsetId,
    "styles": List<dynamic>.from(styles.map((x) => x)),
    "type": type,
    "prices": List<dynamic>.from(prices.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "author": author.toJson(),
    "is_premium": isPremium,
    "are_all_icons_glyph": areAllIconsGlyph,
    "name": name,
    "icons_count": iconsCount,
    "published_at": publishedAt.toIso8601String(),
    "identifier": identifier,
  };
}

class Author {
  Author({
    required this.iconsetsCount,
    required this.isDesigner,
    required this.company,
    required this.userId,
    required this.name,
    required this.username,
  });

  int iconsetsCount;
  bool isDesigner;
  String company;
  int userId;
  String name;
  String username;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    iconsetsCount: json["iconsets_count"],
    isDesigner: json["is_designer"],
    company: json["company"],
    userId: json["user_id"],
    name: json["name"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "iconsets_count": iconsetsCount,
    "is_designer": isDesigner,
    "company": company,
    "user_id": userId,
    "name": name,
    "username": username,
  };
}

class Price {
  Price({
    required this.license,
    required this.currency,
    required this.price,
  });

  License license;
  String currency;
  int price;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    license: License.fromJson(json["license"]),
    currency: json["currency"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "license": license.toJson(),
    "currency": currency,
    "price": price,
  };
}

class License {
  License({
    required this.name,
    required this.url,
    required this.licenseId,
    required this.scope,
  });

  String name;
  String url;
  int licenseId;
  String scope;

  factory License.fromJson(Map<String, dynamic> json) => License(
    name: json["name"],
    url: json["url"],
    licenseId: json["license_id"],
    scope: json["scope"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
    "license_id": licenseId,
    "scope": scope,
  };
}



