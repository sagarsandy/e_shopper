import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class OfferBannerWidget extends StatelessWidget {
  final _items = [
    "https://i2.wp.com/printmediacentr.com/wp-content/uploads/2017/12/printable-coupons.jpg?resize=700%2C412&ssl=1",
    "https://image.freepik.com/free-vector/limited-offer-labels-alarm-clock-countdown-logo-limited-time-offer-badge_100456-975.jpg",
    "https://ecommerceguide.com/wp-content/uploads/2016/01/coupon-main.jpg",
    "https://i2.wp.com/printmediacentr.com/wp-content/uploads/2017/12/printable-coupons.jpg?resize=700%2C412&ssl=1",
    "https://banner2.cleanpng.com/20171127/b01/red-sale-transparent-png-clip-art-image-5a1bbe22113d82.7322641915117675860706.jpg",
  ];
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildPageView(),
        _buildCircleIndicator(),
      ],
    );
  }

  _buildPageView() {
    return Container(
      color: Colors.blueGrey,
      height: 150.0,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              _items[index],
              fit: BoxFit.cover,
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          size: 10.0,
          selectedSize: 13.0,
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }
}
