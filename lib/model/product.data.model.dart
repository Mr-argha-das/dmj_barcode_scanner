// To parse this JSON data, do
//
//     final productData = productDataFromJson(jsonString);

import 'dart:convert';

ProductData productDataFromJson(String str) => ProductData.fromJson(json.decode(str));

String productDataToJson(ProductData data) => json.encode(data.toJson());

class ProductData {
    int statusCode;
    String status;
    String message;
    Data data;

    ProductData({
        required this.statusCode,
        required this.status,
        required this.message,
        required this.data,
    });

    factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        statusCode: json["statusCode"],
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "status": status,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String name;
    String type;
    String sku;
    bool pStatus;
    String description;
    int stock;
    String slug;
    String seoTitle;
    String seoDescription;
    String searchKeywords;
    DateTime createdAt;
    dynamic updatedAt;
    int categoryId;
    String barCodeNumber;
    List<Image> images;
    bool trending;

    Data({
        required this.id,
        required this.name,
        required this.type,
        required this.sku,
        required this.pStatus,
        required this.description,
        required this.stock,
        required this.slug,
        required this.seoTitle,
        required this.seoDescription,
        required this.searchKeywords,
        required this.createdAt,
        required this.updatedAt,
        required this.categoryId,
        required this.barCodeNumber,
        required this.images,
        required this.trending,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        sku: json["sku"],
        pStatus: json["p_status"],
        description: json["description"],
        stock: json["stock"],
        slug: json["slug"],
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        searchKeywords: json["search_keywords"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        categoryId: json["categoryId"],
        barCodeNumber: json["barCodeNumber"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        trending: json["trending"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "sku": sku,
        "p_status": pStatus,
        "description": description,
        "stock": stock,
        "slug": slug,
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "search_keywords": searchKeywords,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
        "categoryId": categoryId,
        "barCodeNumber": barCodeNumber,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "trending": trending,
    };
}

class Image {
    int id;
    String thumbImage;
    String pictures;
    String color;
    List<ProductVariantEntity> productVariantEntities;

    Image({
        required this.id,
        required this.thumbImage,
        required this.pictures,
        required this.color,
        required this.productVariantEntities,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        thumbImage: json["thumbImage"],
        pictures: json["pictures"],
        color: json["color"],
        productVariantEntities: List<ProductVariantEntity>.from(json["productVariantEntities"].map((x) => ProductVariantEntity.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "thumbImage": thumbImage,
        "pictures": pictures,
        "color": color,
        "productVariantEntities": List<dynamic>.from(productVariantEntities.map((x) => x.toJson())),
    };
}

class ProductVariantEntity {
    int id;
    double price;
    int minimumOrder;
    double discount;
    double manualPrice;
    bool pStatus;
    int stock;
    String color;
    String size;
    String material;
    String productWidth;
    String productHeigth;
    String productWeight;
    String productDepth;
    String barCodeNumber;
    String packageLength;
    String packageBreadth;
    String packageHeigth;
    String packageWeight;
    String manufacturerDetails;
    String packerDetails;
    String country;
    String currencySymbol;

    ProductVariantEntity({
        required this.id,
        required this.price,
        required this.minimumOrder,
        required this.discount,
        required this.manualPrice,
        required this.pStatus,
        required this.stock,
        required this.color,
        required this.size,
        required this.material,
        required this.productWidth,
        required this.productHeigth,
        required this.productWeight,
        required this.productDepth,
        required this.barCodeNumber,
        required this.packageLength,
        required this.packageBreadth,
        required this.packageHeigth,
        required this.packageWeight,
        required this.manufacturerDetails,
        required this.packerDetails,
        required this.country,
        required this.currencySymbol,
    });

    factory ProductVariantEntity.fromJson(Map<String, dynamic> json) => ProductVariantEntity(
        id: json["id"],
        price: json["price"]?.toDouble(),
        minimumOrder: json["minimum_order"],
        discount: json["discount"],
        manualPrice: json["manualPrice"]?.toDouble(),
        pStatus: json["p_status"],
        stock: json["stock"],
        color: json["color"],
        size: json["size"],
        material: json["material"],
        productWidth: json["product_width"],
        productHeigth: json["product_heigth"],
        productWeight: json["product_weight"],
        productDepth: json["product_depth"],
        barCodeNumber: json["barCodeNumber"],
        packageLength: json["package_length"],
        packageBreadth: json["package_breadth"],
        packageHeigth: json["package_heigth"],
        packageWeight: json["package_weight"],
        manufacturerDetails: json["manufacturer_details"],
        packerDetails: json["packer_details"],
        country: json["country"],
        currencySymbol: json["currencySymbol"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "minimum_order": minimumOrder,
        "discount": discount,
        "manualPrice": manualPrice,
        "p_status": pStatus,
        "stock": stock,
        "color": color,
        "size": size,
        "material": material,
        "product_width": productWidth,
        "product_heigth": productHeigth,
        "product_weight": productWeight,
        "product_depth": productDepth,
        "barCodeNumber": barCodeNumber,
        "package_length": packageLength,
        "package_breadth": packageBreadth,
        "package_heigth": packageHeigth,
        "package_weight": packageWeight,
        "manufacturer_details": manufacturerDetails,
        "packer_details": packerDetails,
        "country": country,
        "currencySymbol": currencySymbol,
    };
}
