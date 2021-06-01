import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 400.0, enableInfiniteScroll: true, enlargeCenterPage: true),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return BoxCarousel('Title $i', 'Richiedi coupon');
          },
        );
      }).toList(),
    );
  }
}

class BoxCarousel extends StatelessWidget {
  final String title;
  final String buttonTitle;

  BoxCarousel(this.title, this.buttonTitle);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          child: Image.network(
              'https://www.enel.it/content/enel-it/it/_jcr_content/homeCarousel/items/hero_item_1360948694/imageTablet.img.jpg/1617804692227.jpg')),
      Positioned(
          child: Container(
              padding: EdgeInsets.all(50),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              // decoration: BoxDecoration(color: Colors.amber),
              child: Column(children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(buttonTitle),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                )
              ])))
    ]);
  }
}
