import 'package:flutter/material.dart';
import 'package:flutter_prodiver/model/imageModel.dart';
import 'package:flutter_prodiver/view/slideItems.dart';
import 'package:provider/provider.dart';

class ImageSlider extends StatelessWidget {

  PageController _controller = PageController();

  List<Widget> _images = [
    SliderItems(
      image: "assets/images/bike1.png",
    ),
    SliderItems(
      image: "assets/images/car_top.png",
    ),
    SliderItems(
      image: "assets/images/car_top1.png",
    ),
    SliderItems(
      image: "assets/images/orange_car.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final imageModel = Provider.of<ImageModel>(context, listen: false);

    void _nextImage() {
      imageModel.nextImage();
    }

    void _prevImage() {
      imageModel.prevImage();
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (value){
              imageModel.imageSlider(value);
            },
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _images.length,
            itemBuilder: (context, int index){
              return Consumer<ImageModel>(
                builder: (context, mImage, child) => _images[mImage.getImageSlider],
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: _prevImage,
                    child: Text(
                      "Prev",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: _nextImage,
                    child: Text(
                        "Next",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}