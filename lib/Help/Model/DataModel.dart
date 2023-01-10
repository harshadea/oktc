import 'dart:convert';
/// status : "200"
/// data : [{"category_id":320,"category_name":"South Indian Breakfast","products":[{"kitchen_item_id":15209,"kitchen_item_name":"Appam and Veg Kurma","kitchen_item_image":[{"images":""}],"kitchen_item_amount":90,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":80,"products_temp_quantity":5,"products_max_quantity":10,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":0},{"kitchen_item_id":15210,"kitchen_item_name":"Puttu and Kadala Curry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":90,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":80,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":0}]},{"category_id":337,"category_name":"Fish Curries and Fries","products":[{"kitchen_item_id":15211,"kitchen_item_name":"Fish Fry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":55,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":50,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":324,"category_name":"Chicken Curries and Fries","products":[{"kitchen_item_id":15212,"kitchen_item_name":"Chicken Curry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":105,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":90,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1},{"kitchen_item_id":15213,"kitchen_item_name":"Chicken Fry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":55,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":50,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":328,"category_name":"Beef Curries and Fries","products":[{"kitchen_item_id":15214,"kitchen_item_name":"Beef Roast","kitchen_item_image":[{"images":""}],"kitchen_item_amount":100,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":90,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1},{"kitchen_item_id":15215,"kitchen_item_name":"Beef Fry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":115,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":100,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1},{"kitchen_item_id":15218,"kitchen_item_name":"Beef Vindaloo","kitchen_item_image":[{"images":""}],"kitchen_item_amount":115,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":100,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":335,"category_name":"Pork Curries and Fries","products":[{"kitchen_item_id":15216,"kitchen_item_name":"Pork Vindaloo","kitchen_item_image":[{"images":""}],"kitchen_item_amount":105,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":90,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":310,"category_name":"Idli","products":[{"kitchen_item_id":15217,"kitchen_item_name":"Idli Sambar and Chutney","kitchen_item_image":[{"images":""}],"kitchen_item_amount":90,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":80,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":0}]},{"category_id":266,"category_name":"Cutlet","products":[{"kitchen_item_id":15219,"kitchen_item_name":"Beef Cutlet (2 Pcs)","kitchen_item_image":[{"images":""}],"kitchen_item_amount":30,"products_status":1,"item_packaging_charge":5,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":25,"products_temp_quantity":10,"products_max_quantity":50,"products_quantity":10,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":415,"category_name":"Pothichoru","products":[{"kitchen_item_id":15234,"kitchen_item_name":" Non- Veg Pothichoru","kitchen_item_image":[{"images":""}],"kitchen_item_amount":70,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":60,"products_temp_quantity":4,"products_max_quantity":15,"products_quantity":4,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":375,"category_name":"Non-Veg Noodles","products":[{"kitchen_item_id":15237,"kitchen_item_name":"Chicken Noodles","kitchen_item_image":[{"images":""}],"kitchen_item_amount":130,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":110,"products_temp_quantity":5,"products_max_quantity":15,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":1}]},{"category_id":330,"category_name":"Fresh Cream Cakes","products":[{"kitchen_item_id":15238,"kitchen_item_name":"Vanilla Cream Cake ( 1 Kg )","kitchen_item_image":[{"images":""}],"kitchen_item_amount":900,"products_status":1,"item_packaging_charge":20,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":850,"products_temp_quantity":1,"products_max_quantity":5,"products_quantity":1,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":2}]}]
/// categories_count : 10

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));
String dataModelToJson(DataModel data) => json.encode(data.toJson());
class DataModel {
  DataModel({
      this.status, 
      this.data, 
      this.categoriesCount,});

  DataModel.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    categoriesCount = json['categories_count'];
  }
  String? status;
  List<Data>? data;
  num? categoriesCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['categories_count'] = categoriesCount;
    return map;
  }

}

/// category_id : 320
/// category_name : "South Indian Breakfast"
/// products : [{"kitchen_item_id":15209,"kitchen_item_name":"Appam and Veg Kurma","kitchen_item_image":[{"images":""}],"kitchen_item_amount":90,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":80,"products_temp_quantity":5,"products_max_quantity":10,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":0},{"kitchen_item_id":15210,"kitchen_item_name":"Puttu and Kadala Curry","kitchen_item_image":[{"images":""}],"kitchen_item_amount":90,"products_status":1,"item_packaging_charge":0,"busaddress":"Chakkalakkal Road ","user_id":3988,"item_discount_price":80,"products_temp_quantity":5,"products_max_quantity":20,"products_quantity":5,"buy_status":false,"placeorder_type":1,"mode":1,"business_status":1,"verification_status":6,"business_drawer_status":1,"is_deliver":false,"is_cart":false,"products_type":0}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.categoryId, 
      this.categoryName, 
      this.products,});

  Data.fromJson(dynamic json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }
  num? categoryId;
  String? categoryName;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = categoryId;
    map['category_name'] = categoryName;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// kitchen_item_id : 15209
/// kitchen_item_name : "Appam and Veg Kurma"
/// kitchen_item_image : [{"images":""}]
/// kitchen_item_amount : 90
/// products_status : 1
/// item_packaging_charge : 0
/// busaddress : "Chakkalakkal Road "
/// user_id : 3988
/// item_discount_price : 80
/// products_temp_quantity : 5
/// products_max_quantity : 10
/// products_quantity : 5
/// buy_status : false
/// placeorder_type : 1
/// mode : 1
/// business_status : 1
/// verification_status : 6
/// business_drawer_status : 1
/// is_deliver : false
/// is_cart : false
/// products_type : 0

Products productsFromJson(String str) => Products.fromJson(json.decode(str));
String productsToJson(Products data) => json.encode(data.toJson());
class Products {
  Products({
      this.kitchenItemId, 
      this.kitchenItemName, 
      this.kitchenItemImage, 
      this.kitchenItemAmount, 
      this.productsStatus, 
      this.itemPackagingCharge, 
      this.busaddress, 
      this.userId, 
      this.itemDiscountPrice, 
      this.productsTempQuantity, 
      this.productsMaxQuantity, 
      this.productsQuantity, 
      this.buyStatus, 
      this.placeorderType, 
      this.mode, 
      this.businessStatus, 
      this.verificationStatus, 
      this.businessDrawerStatus, 
      this.isDeliver, 
      this.isCart, 
      this.productsType,});

  Products.fromJson(dynamic json) {
    kitchenItemId = json['kitchen_item_id'];
    kitchenItemName = json['kitchen_item_name'];
    if (json['kitchen_item_image'] != null) {
      kitchenItemImage = [];
      json['kitchen_item_image'].forEach((v) {
        kitchenItemImage?.add(KitchenItemImage.fromJson(v));
      });
    }
    kitchenItemAmount = json['kitchen_item_amount'];
    productsStatus = json['products_status'];
    itemPackagingCharge = json['item_packaging_charge'];
    busaddress = json['busaddress'];
    userId = json['user_id'];
    itemDiscountPrice = json['item_discount_price'];
    productsTempQuantity = json['products_temp_quantity'];
    productsMaxQuantity = json['products_max_quantity'];
    productsQuantity = json['products_quantity'];
    buyStatus = json['buy_status'];
    placeorderType = json['placeorder_type'];
    mode = json['mode'];
    businessStatus = json['business_status'];
    verificationStatus = json['verification_status'];
    businessDrawerStatus = json['business_drawer_status'];
    isDeliver = json['is_deliver'];
    isCart = json['is_cart'];
    productsType = json['products_type'];
  }
  num? kitchenItemId;
  String? kitchenItemName;
  List<KitchenItemImage>? kitchenItemImage;
  num? kitchenItemAmount;
  num? productsStatus;
  num? itemPackagingCharge;
  String? busaddress;
  num? userId;
  num? itemDiscountPrice;
  num? productsTempQuantity;
  num? productsMaxQuantity;
  num? productsQuantity;
  bool? buyStatus;
  num? placeorderType;
  num? mode;
  num? businessStatus;
  num? verificationStatus;
  num? businessDrawerStatus;
  bool? isDeliver;
  bool? isCart;
  num? productsType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kitchen_item_id'] = kitchenItemId;
    map['kitchen_item_name'] = kitchenItemName;
    if (kitchenItemImage != null) {
      map['kitchen_item_image'] = kitchenItemImage?.map((v) => v.toJson()).toList();
    }
    map['kitchen_item_amount'] = kitchenItemAmount;
    map['products_status'] = productsStatus;
    map['item_packaging_charge'] = itemPackagingCharge;
    map['busaddress'] = busaddress;
    map['user_id'] = userId;
    map['item_discount_price'] = itemDiscountPrice;
    map['products_temp_quantity'] = productsTempQuantity;
    map['products_max_quantity'] = productsMaxQuantity;
    map['products_quantity'] = productsQuantity;
    map['buy_status'] = buyStatus;
    map['placeorder_type'] = placeorderType;
    map['mode'] = mode;
    map['business_status'] = businessStatus;
    map['verification_status'] = verificationStatus;
    map['business_drawer_status'] = businessDrawerStatus;
    map['is_deliver'] = isDeliver;
    map['is_cart'] = isCart;
    map['products_type'] = productsType;
    return map;
  }

}

/// images : ""

KitchenItemImage kitchenItemImageFromJson(String str) => KitchenItemImage.fromJson(json.decode(str));
String kitchenItemImageToJson(KitchenItemImage data) => json.encode(data.toJson());
class KitchenItemImage {
  KitchenItemImage({
      this.images,});

  KitchenItemImage.fromJson(dynamic json) {
    images = json['images'];
  }
  String? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = images;
    return map;
  }

}