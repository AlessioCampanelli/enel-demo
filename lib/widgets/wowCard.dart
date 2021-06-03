import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uidemo/models/WowResponseModel.dart';

class WowCard extends StatelessWidget {
  final BannerWow banner;

  WowCard(this.banner);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Card(
        elevation: 15,
        child: Container(
          height: 140,
          child: Stack(
            children: [
              Positioned(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  banner.image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      banner.type,
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      banner.title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                      banner.subtitle,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
