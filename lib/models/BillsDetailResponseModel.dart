class BillDetailResponseModel {
  String title;
  List<Invoice> invoices = [];

  BillDetailResponseModel({this.title, this.invoices});

  BillDetailResponseModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['invoices'] != null) {
      invoices = [];
      json['invoices'].forEach((v) {
        invoices.add(new Invoice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.invoices != null) {
      data['invoices'] = this.invoices.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Invoice {
  String type;
  String title;
  String id;
  String created;
  double tv;
  double amount;
  String expiration;
  String state;
  List<Document> documents;

  Invoice(
      {this.type,
      this.title,
      this.id,
      this.created,
      this.tv,
      this.amount,
      this.expiration,
      this.state,
      this.documents});

  Invoice.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    id = json['id'];
    created = json['created'];
    tv = json['tv'];
    amount = json['amount'];
    expiration = json['expiration'];
    state = json['state'];
    if (json['documents'] != null) {
      documents = [];
      json['documents'].forEach((v) {
        documents.add(new Document.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    data['id'] = this.id;
    data['created'] = this.created;
    data['tv'] = this.tv;
    data['amount'] = this.amount;
    data['expiration'] = this.expiration;
    data['state'] = this.state;
    if (this.documents != null) {
      data['documents'] = this.documents.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Document {
  String title;
  String url;

  Document({this.title, this.url});

  Document.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}
