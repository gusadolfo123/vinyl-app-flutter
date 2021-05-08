import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:vector_math/vector_math_64.dart' as vector;

class VinylPage extends StatelessWidget {
  const VinylPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: _MyVinylHeader(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis."),
                  Text(
                      "Adipisicing velit nostrud esse elit proident ut. Nisi eiusmod veniam est labore id deserunt nisi ipsum qui consectetur aliqua veniam laborum. Eiusmod amet esse culpa qui velit aute non magna quis.")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const _maxHeight = 320.0;
const _minheight = 100.0;
const _maxHeightImg = 160.0;
const _minHeightImg = 60.0;

const _minLeftVynil = 35.0;
const _maxLeftVynil = 162.0;

const _minPosText = 30.0;
const _maxPostText = 50.0;

const _minLeftPosText = 10.0;
const _maxLeftPosText = 40.0;

class _MyVinylHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxHeight;
    final currentImageSize =
        (_maxHeightImg * (1 - percent)).clamp(_minHeightImg, _maxHeightImg);
    final currentLeftImg =
        (_maxLeftVynil * (1 - percent)).clamp(_minLeftVynil, _maxLeftVynil);
    final size = MediaQuery.of(context).size;

    final positionText =
        (_maxPostText * (1 - percent)).clamp(_minPosText, _maxPostText);

    final maxMargin = (size.width / 4);
    final positionLeftText = (maxMargin + 40 * (percent));

    return Container(
      color: Colors.red[700],
      child: Stack(
        children: [
          Positioned(
            top: positionText,
            left: positionLeftText,
            child: Column(
              children: [
                Text(
                  "Dream theather",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                  ),
                ),
                Text(
                  "A change of season",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.2,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: currentLeftImg,
            bottom: 20.0,
            height: currentImageSize,
            child: Transform.rotate(
              angle: vector.radians(360 * percent),
              child: Image.asset("assets/img/vinyl.png"),
            ),
          ),
          Positioned(
            left: 35.0,
            bottom: 20.0,
            height: currentImageSize,
            child: Image.asset("assets/img/vinyl_package2.png"),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => _maxHeight;

  @override
  double get minExtent => _minheight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
