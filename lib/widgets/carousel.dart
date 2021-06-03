import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stacked/stacked.dart';
import 'package:uidemo/models/WowResponseModel.dart';
import 'package:uidemo/pages/tabs/wow/wowViewModel.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WowViewModel>.reactive(
        viewModelBuilder: () => WowViewModel(),
        // onModelReady: (viewModel) => viewModel.initialise(),
        builder: (context, viewModel, child) => CarouselSlider(
              options: CarouselOptions(
                  height: 400.0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true),
              items: viewModel.apiResponseModel.banners.map((banner) {
                return Builder(
                  builder: (BuildContext context) {
                    return BoxCarousel(banner);
                  },
                );
              }).toList(),
            ));

    /*return CarouselSlider(
      options: CarouselOptions(
          height: 400.0, enableInfiniteScroll: true, enlargeCenterPage: true),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return BoxCarousel('Title $i', 'Richiedi coupon');
          },
        );
      }).toList(),
    ); */
  }
}

class BoxCarousel extends StatelessWidget {
  final BannerWow banner;

  BoxCarousel(this.banner);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          child: Image.network(
        banner.image,
        fit: BoxFit.fill,
      )),
      Positioned(
          child: Container(
              padding: EdgeInsets.all(50),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(children: [
                Text(
                  banner.title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(banner.ctaCarousel),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                )
              ])))
    ]);
  }
}
