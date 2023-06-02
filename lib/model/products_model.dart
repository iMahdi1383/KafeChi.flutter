// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
    int currentPage;
    List<Product> data;
    int from;
    int perPage;
    int totalPages;
    int count;
    String nextPageUrl;
    dynamic prevPageUrl;

    Products({
        required this.currentPage,
        required this.data,
        required this.from,
        required this.perPage,
        required this.totalPages,
        required this.count,
        required this.nextPageUrl,
        this.prevPageUrl,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        currentPage: json["current_page"],
        data: List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
        from: json["from"],
        perPage: json["per_page"],
        totalPages: json["total_pages"],
        count: json["count"],
        nextPageUrl: json["next_page_url"],
        prevPageUrl: json["prev_page_url"],
    );

    Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "from": from,
        "per_page": perPage,
        "total_pages": totalPages,
        "count": count,
        "next_page_url": nextPageUrl,
        "prev_page_url": prevPageUrl,
    };
}

class Product {
    int id;
    String name;
    String slug;
    String description;
    int categoryId;
    int userId;
    int view;
    int price;
    int sellCount;
    DateTime createdAt;
    DateTime updatedAt;
    String image;
    String thumb;
    Category category;
    User user;
    String url;

    Product({
        required this.id,
        required this.name,
        required this.slug,
        required this.description,
        required this.categoryId,
        required this.userId,
        required this.view,
        required this.price,
        required this.sellCount,
        required this.createdAt,
        required this.updatedAt,
        required this.image,
        required this.thumb,
        required this.category,
        required this.user,
        required this.url,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        description: json["description"],
        categoryId: json["category_id"],
        userId: json["user_id"],
        view: json["view"],
        price: json["price"],
        sellCount: json["sell_count"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        image: json["image"],
        thumb: json["thumb"],
        category: Category.fromJson(json["category"]),
        user: User.fromJson(json["user"]),
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "description": description,
        "category_id": categoryId,
        "user_id": userId,
        "view": view,
        "price": price,
        "sell_count": sellCount,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image": image,
        "thumb": thumb,
        "category": category.toJson(),
        "user": user.toJson(),
        "url": url,
    };
}

class Category {
    int id;
    Name name;
    Slug slug;
    int parentId;
    String body;
    DateTime createdAt;
    DateTime updatedAt;

    Category({
        required this.id,
        required this.name,
        required this.slug,
        required this.parentId,
        required this.body,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        slug: slugValues.map[json["slug"]]!,
        parentId: json["parent_id"],
        body: json["body"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "slug": slugValues.reverse[slug],
        "parent_id": parentId,
        "body": body,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

enum Name { EMPTY, NAME }

final nameValues = EnumValues({
    "گوشی موبایل": Name.EMPTY,
    "تبلت": Name.NAME
});

enum Slug { GOSHY_MOBAYL, TBLT }

final slugValues = EnumValues({
    "goshy-mobayl": Slug.GOSHY_MOBAYL,
    "tblt": Slug.TBLT
});

class User {
    int id;
    String name;
    String email;
    DateTime emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
