// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class Icondetail extends StatefulWidget {
  const Icondetail({Key? key}) : super(key: key);

  @override
  State<Icondetail> createState() => _IcondetailState();
}

class _IcondetailState extends State<Icondetail> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.totalCount,
    required this.icons,
  });

  int totalCount;
  List<Icon>? icons;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    totalCount: json["total_count"] == null ? null : json["total_count"],
    icons: json["icons"] == null ? null : List<Icon>.from(json["icons"].map((x) => Icon.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total_count": totalCount == null ? null : totalCount,
    "icons": icons == null ? null : List<dynamic>.from(icons.map((x) => x.toJson())),
  };
}

class Icon {
  Icon({
    required this.vectorSizes,
    required this.styles,
    required this.containers,
    required this.type, required this.tags,
    required this.categories,
    required this.prices,
    required this.publishedAt,
    required this.rasterSizes,
    required this.iconId,
    required this.isIconGlyph,
    required this.isPremium,
  });

  List<VectorSize> vectorSizes;
  List<Category> styles;
  List<Container> containers;
  String type;
  List<String> tags;
  List<Category> categories;
  List<Price> prices;
  DateTime publishedAt;
  List<RasterSize> rasterSizes;
  int iconId;
  bool isIconGlyph;
  bool isPremium;

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
    vectorSizes: json["vector_sizes"] == null ? null : List<VectorSize>.from(json["vector_sizes"].map((x) => VectorSize.fromJson(x))),
    styles: json["styles"] == null ? null : List<Category>.from(json["styles"].map((x) => Category.fromJson(x))),
    containers: json["containers"] == null ? null : List<Container>.from(json["containers"].map((x) => Container.fromJson(x))),
    type: json["type"] == null ? null : json["type"],
    tags: json["tags"] == null ? null : List<String>.from(json["tags"].map((x) => x)),
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    prices: json["prices"] == null ? null : List<Price>.from(json["prices"].map((x) => Price.fromJson(x))),
    publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
    rasterSizes: json["raster_sizes"] == null ? null : List<RasterSize>.from(json["raster_sizes"].map((x) => RasterSize.fromJson(x))),
    iconId: json["icon_id"] == null ? null : json["icon_id"],
    isIconGlyph: json["is_icon_glyph"] == null ? null : json["is_icon_glyph"],
    isPremium: json["is_premium"] == null ? null : json["is_premium"],
  );

  Map<String, dynamic> toJson() => {
    "vector_sizes": vectorSizes == null ? null : List<dynamic>.from(vectorSizes.map((x) => x.toJson())),
    "styles": styles == null ? null : List<dynamic>.from(styles.map((x) => x.toJson())),
    "containers": containers == null ? null : List<dynamic>.from(containers.map((x) => x.toJson())),
    "type": type == null ? null : type,
    "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x.toJson())),
    "prices": prices == null ? null : List<dynamic>.from(prices.map((x) => x.toJson())),
    "published_at": publishedAt == null ? null : publishedAt.toIso8601String(),
    "raster_sizes": rasterSizes == null ? null : List<dynamic>.from(rasterSizes.map((x) => x.toJson())),
    "icon_id": iconId == null ? null : iconId,
    "is_icon_glyph": isIconGlyph == null ? null : isIconGlyph,
    "is_premium": isPremium == null ? null : isPremium,
  };
}

class Category {
  Category({
    this.identifier,
    this.name,
  });

  String identifier;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    identifier: json["identifier"] == null ? null : json["identifier"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier == null ? null : identifier,
    "name": name == null ? null : name,
  };
}

class Container {
  Container({
    this.format,
    this.downloadUrl,
  });

  String format;
  String downloadUrl;

  factory Container.fromJson(Map<String, dynamic> json) => Container(
    format: json["format"] == null ? null : json["format"],
    downloadUrl: json["download_url"] == null ? null : json["download_url"],
  );

  Map<String, dynamic> toJson() => {
    "format": format == null ? null : format,
    "download_url": downloadUrl == null ? null : downloadUrl,
  };
}

class Price {
  Price({
    this.currency,
    this.price,
    this.license,
  });

  String currency;
  int price;
  License license;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    currency: json["currency"] == null ? null : json["currency"],
    price: json["price"] == null ? null : json["price"],
    license: json["license"] == null ? null : License.fromJson(json["license"]),
  );

  Map<String, dynamic> toJson() => {
    "currency": currency == null ? null : currency,
    "price": price == null ? null : price,
    "license": license == null ? null : license.toJson(),
  };
}

class License {
  License({
    this.url,
    this.scope,
    this.licenseId,
    this.name,
  });

  String url;
  String scope;
  int licenseId;
  String name;

  factory License.fromJson(Map<String, dynamic> json) => License(
    url: json["url"] == null ? null : json["url"],
    scope: json["scope"] == null ? null : json["scope"],
    licenseId: json["license_id"] == null ? null : json["license_id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "scope": scope == null ? null : scope,
    "license_id": licenseId == null ? null : licenseId,
    "name": name == null ? null : name,
  };
}

class RasterSize {
  RasterSize({
    this.size,
    this.sizeHeight,
    this.sizeWidth,
    this.formats,
  });

  int size;
  int sizeHeight;
  int sizeWidth;
  List<Format> formats;

  factory RasterSize.fromJson(Map<String, dynamic> json) => RasterSize(
    size: json["size"] == null ? null : json["size"],
    sizeHeight: json["size_height"] == null ? null : json["size_height"],
    sizeWidth: json["size_width"] == null ? null : json["size_width"],
    formats: json["formats"] == null ? null : List<Format>.from(json["formats"].map((x) => Format.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "size": size == null ? null : size,
    "size_height": sizeHeight == null ? null : sizeHeight,
    "size_width": sizeWidth == null ? null : sizeWidth,
    "formats": formats == null ? null : List<dynamic>.from(formats.map((x) => x.toJson())),
  };
}

class Format {
  Format({
    this.format,
    this.previewUrl,
    this.downloadUrl,
  });

  String format;
  String previewUrl;
  String downloadUrl;

  factory Format.fromJson(Map<String, dynamic> json) => Format(
    format: json["format"] == null ? null : json["format"],
    previewUrl: json["preview_url"] == null ? null : json["preview_url"],
    downloadUrl: json["download_url"] == null ? null : json["download_url"],
  );

  Map<String, dynamic> toJson() => {
    "format": format == null ? null : format,
    "preview_url": previewUrl == null ? null : previewUrl,
    "download_url": downloadUrl == null ? null : downloadUrl,
  };
}

class VectorSize {
  VectorSize({
    this.size,
    this.sizeHeight,
    this.targetSizes,
    this.sizeWidth,
    this.formats,
  });

  int size;
  int sizeHeight;
  List<List<int>> targetSizes;
  int sizeWidth;
  List<Container> formats;

  factory VectorSize.fromJson(Map<String, dynamic> json) => VectorSize(
    size: json["size"] == null ? null : json["size"],
    sizeHeight: json["size_height"] == null ? null : json["size_height"],
    targetSizes: json["target_sizes"] == null ? null : List<List<int>>.from(json["target_sizes"].map((x) => List<int>.from(x.map((x) => x)))),
    sizeWidth: json["size_width"] == null ? null : json["size_width"],
    formats: json["formats"] == null ? null : List<Container>.from(json["formats"].map((x) => Container.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "size": size == null ? null : size,
    "size_height": sizeHeight == null ? null : sizeHeight,
    "target_sizes": targetSizes == null ? null : List<dynamic>.from(targetSizes.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "size_width": sizeWidth == null ? null : sizeWidth,
    "formats": formats == null ? null : List<dynamic>.from(formats.map((x) => x.toJson())),
  };
}
