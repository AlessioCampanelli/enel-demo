class WowResponseModel {
  List<BannerWow> banners;

  WowResponseModel({this.banners});

  WowResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = [];
      json['banners'].forEach((v) {
        banners.add(new BannerWow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BannerWow {
  String type;
  String title;
  String subtitle;
  bool isNew;
  String image;
  String ctaCarousel;

  BannerWow(
      {this.type,
      this.title,
      this.subtitle,
      this.isNew,
      this.image,
      this.ctaCarousel});

  BannerWow.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    subtitle = json['subtitle'];
    isNew = json['isNew'];
    image = json['image'];
    ctaCarousel = json['ctaCarousel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['isNew'] = this.isNew;
    data['image'] = this.image;
    data['ctaCarousel'] = this.ctaCarousel;
    return data;
  }
}
