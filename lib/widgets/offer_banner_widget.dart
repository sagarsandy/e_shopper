import 'package:flutter/material.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

class OfferBannerWidget extends StatelessWidget {
  // Page view image items
  final _items = [
    "assets/images/offer-one.png",
    "assets/images/offer-two.png",
    "assets/images/offer-three.png",
    "assets/images/offer-four.png",
    "assets/images/offer-two.png",
  ];
  // page controller
  final _pageController = PageController();

  // current page value notifier
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Rendering page view
        _renderPageView(),
        // Rendering circles for current page indicator
        _renderCircleIndicator(),
      ],
    );
  }

  // Offers page view design
  _renderPageView() {
    return Container(
      color: Colors.blueGrey,
      height: 150.0,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              _items[index],
              fit: BoxFit.fill,
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  // Circle progress page indicator design
  _renderCircleIndicator() {
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
