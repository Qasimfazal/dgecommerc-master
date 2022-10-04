class HomeMeodel {
/*
{
  "id": 14390,
  "name": "ARCELIK 8 Serisi A55 C 890 A 4K Android TV",
  "photos": [
    "21874"
  ],
  "thumbnail_image": "uploads/all/QOEutiuWFkalFpSvi7HAI2w8SfI2j5Nzmw786h7f.jpg",
  "base_price": 722.9,
  "base_discounted_price": 722.9,
  "todays_deal": 0,
  "featured": 0,
  "unit": "pc",
  "discount": 0,
  "discount_type": "amount",
  "rating": 0,
  "sales": 0,
  "links": {
    "details": "https://turkishemarket.com/api/v2/products/14390",
    "reviews": "https://turkishemarket.com/api/v2/reviews/product/14390",
    "related": "https://turkishemarket.com/api/v2/products/related/14390",
    "top_from_seller": "https://turkishemarket.com/api/v1/products/top-from-seller/14390"
  }
}
*/

  int? id;
  String? name;
  List<String>? photos;
  String? thumbnailImage;
  String? basePrice;
  String? baseDiscountedPrice;
  int? todaysDeal;
  int? featured;
  String? unit;
  int? discount;
  String? discountType;
  int? rating;
  int? sales;
  HomeMeodel? links;

  HomeMeodel({
    this.id,
    this.name,
    this.photos,
    this.thumbnailImage,
    this.basePrice,
    this.baseDiscountedPrice,
    this.todaysDeal,
    this.featured,
    this.unit,
    this.discount,
    this.discountType,
    this.rating,
    this.sales,
    this.links,
  });
  HomeMeodel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    if (json['photos'] != null) {
      final v = json['photos'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      photos = arr0;
    }
    thumbnailImage = json['thumbnail_image']?.toString();
    basePrice = json['base_price']?.toString();
    baseDiscountedPrice = json['base_discounted_price']?.toString();
    todaysDeal = json['todays_deal']?.toInt();
    featured = json['featured']?.toInt();
    unit = json['unit']?.toString();
    discount = json['discount']?.toInt();
    discountType = json['discount_type']?.toString();
    rating = json['rating']?.toInt();
    sales = json['sales']?.toInt();
    links = (json['links'] != null) ? HomeMeodel.fromJson(json['links']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (photos != null) {
      final v = photos;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['photos'] = arr0;
    }
    data['thumbnail_image'] = thumbnailImage;
    data['base_price'] = basePrice;
    data['base_discounted_price'] = baseDiscountedPrice;
    data['todays_deal'] = todaysDeal;
    data['featured'] = featured;
    data['unit'] = unit;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['rating'] = rating;
    data['sales'] = sales;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }
}