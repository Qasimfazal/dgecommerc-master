class SomeRootEntityDataLinks {
/*
{
  "details": "https://turkishemarket.com/api/v2/products/10391"
}
*/

  String? details;

  SomeRootEntityDataLinks({
    this.details,
  });
  SomeRootEntityDataLinks.fromJson(Map<String, dynamic> json) {
    details = json['details']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['details'] = details;
    return data;
  }
}

class MiniCardModel {


  int? id;
  String? name;
  String? thumbnailImage;
  String? basePrice;
  int? rating;
  int? sales;
  SomeRootEntityDataLinks? links;

  MiniCardModel({
    this.id,
    this.name,
    this.thumbnailImage,
    this.basePrice,
    this.rating,
    this.sales,
    this.links,
  });
  MiniCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    thumbnailImage = json['thumbnail_image']?.toString();
    basePrice = json['base_price']?.toString();
    rating = json['rating']?.toInt();
    sales = json['sales']?.toInt();
    links = (json['links'] != null) ? SomeRootEntityDataLinks.fromJson(json['links']) : null;
  }

}

