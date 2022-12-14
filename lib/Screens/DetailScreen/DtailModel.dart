///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DetailScreenModel {
/*
{
  "id": 14390,
  "name": "ARCELIK 8 Serisi A55 C 890 A 4K Android TV",
  "added_by": "seller",
  "seller_id": 13,
  "shop_id": 5,
  "shop_name": null,
  "shop_logo": "",
  "photos": [
    "uploads/all/vOvDAB4xNwyZaNKzZQHPW99MO1VDA9d97lGMzAxU.jpg"
  ],
  "thumbnail_image": "uploads/all/QOEutiuWFkalFpSvi7HAI2w8SfI2j5Nzmw786h7f.jpg",
  "tags": [
    "televizyon"
  ],
  "price_high_low": "RS 722.90",
  "choice_options": [
    null
  ],
  "colors": [
    null
  ],
  "has_discount": false,
  "stroked_price": "RS 128,603.91",
  "main_price": "RS 128,603.91",
  "calculable_price": 722.9,
  "currency_symbol": "RS",
  "current_stock": 5,
  "unit": "pc",
  "rating": 0,
  "rating_count": 0,
  "earn_point": 0,
  "description": null
}
*/

  int? id;
  String? name;
  String? addedBy;
  int? sellerId;
  int? shopId;
  String? shopName;
  String? shopLogo;
  List<String?>? photos;
  String? thumbnailImage;
  List<String?>? tags;
  String? priceHighLow;
  bool? hasDiscount;
  String? strokedPrice;
  String? mainPrice;
  double? calculablePrice;
  String? currencySymbol;
  int? currentStock;
  String? unit;
  int? rating;
  int? ratingCount;
  int? earnPoint;
  String? description;

  DetailScreenModel({
    this.id,
    this.name,
    this.addedBy,
    this.sellerId,
    this.shopId,
    this.shopName,
    this.shopLogo,
    this.photos,
    this.thumbnailImage,
    this.tags,
    this.priceHighLow,
    this.hasDiscount,
    this.strokedPrice,
    this.mainPrice,
    this.calculablePrice,
    this.currencySymbol,
    this.currentStock,
    this.unit,
    this.rating,
    this.ratingCount,
    this.earnPoint,
    this.description,
  });
  DetailScreenModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    addedBy = json['added_by']?.toString();
    sellerId = json['seller_id']?.toInt();
    shopId = json['shop_id']?.toInt();
    shopName = json['shop_name']?.toString();
    shopLogo = json['shop_logo']?.toString();
    if (json['photos'] != null) {
      final v = json['photos'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      photos = arr0;
    }
    thumbnailImage = json['thumbnail_image']?.toString();
    if (json['tags'] != null) {
      final v = json['tags'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      tags = arr0;
    }
    priceHighLow = json['price_high_low']?.toString();
    hasDiscount = json['has_discount'];
    strokedPrice = json['stroked_price']?.toString();
    mainPrice = json['main_price']?.toString();
    calculablePrice = json['calculable_price']?.toDouble();
    currencySymbol = json['currency_symbol']?.toString();
    currentStock = json['current_stock']?.toInt();
    unit = json['unit']?.toString();
    rating = json['rating']?.toInt();
    ratingCount = json['rating_count']?.toInt();
    earnPoint = json['earn_point']?.toInt();
    description = json['description']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['added_by'] = addedBy;
    data['seller_id'] = sellerId;
    data['shop_id'] = shopId;
    data['shop_name'] = shopName;
    data['shop_logo'] = shopLogo;
    if (photos != null) {
      final v = photos;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['photos'] = arr0;
    }
    data['thumbnail_image'] = thumbnailImage;
    if (tags != null) {
      final v = tags;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['tags'] = arr0;
    }
    data['price_high_low'] = priceHighLow;

    data['has_discount'] = hasDiscount;
    data['stroked_price'] = strokedPrice;
    data['main_price'] = mainPrice;
    data['calculable_price'] = calculablePrice;
    data['currency_symbol'] = currencySymbol;
    data['current_stock'] = currentStock;
    data['unit'] = unit;
    data['rating'] = rating;
    data['rating_count'] = ratingCount;
    data['earn_point'] = earnPoint;
    data['description'] = description;
    return data;
  }
}

