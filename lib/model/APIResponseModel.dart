class APIResponseModel {
  String title;
  List<Bills> bills = [];

  APIResponseModel({this.title, this.bills}) {
    this.bills = [];
  }

  APIResponseModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['bills'] != null) {
      bills = [];
      json['bills'].forEach((v) {
        bills.add(new Bills.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.bills != null) {
      data['bills'] = this.bills.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bills {
  String type;
  String title;
  int amount;
  String address;
  String cap;

  Bills({this.type, this.title, this.amount, this.address, this.cap});

  Bills.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    amount = json['amount'];
    address = json['address'];
    cap = json['cap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    data['amount'] = this.amount;
    data['address'] = this.address;
    data['cap'] = this.cap;
    return data;
  }
}
