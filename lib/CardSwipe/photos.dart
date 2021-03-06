import 'package:flutter/material.dart';

class PhotoBrowser extends StatefulWidget {
  final List<String> photoAssetPaths;
  final int visiblePhotoIndex;

  PhotoBrowser({
    this.photoAssetPaths,
    this.visiblePhotoIndex,
  });

  @override
  _PhotoBrowserState createState() => new _PhotoBrowserState();
}

class _PhotoBrowserState extends State<PhotoBrowser> {
  int visiblePhotoIndex;

  @override
  void initState() {
    super.initState();
    visiblePhotoIndex = widget.visiblePhotoIndex;
  }

  @override
  void didUpdateWidget(PhotoBrowser oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visiblePhotoIndex != oldWidget.visiblePhotoIndex) {
      setState(() {
        visiblePhotoIndex = widget.visiblePhotoIndex;
      });
    }
  }

  void _prevImage() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex > 0 ? visiblePhotoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex < widget.photoAssetPaths.length - 1
          ? visiblePhotoIndex + 1
          : visiblePhotoIndex;
    });
  }

  Widget _buildPhotoControls() {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new GestureDetector(
          onTap: _prevImage,
          child: new FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: new Container(
              color: Colors.transparent,
            ),
          ),
        ),
        new GestureDetector(
          onTap: _nextImage,
          child: new FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: new Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Photo
        // Change by Arun
        new Image.network(
          widget.photoAssetPaths[visiblePhotoIndex],
          fit: BoxFit.cover,
        ),

        // Photo Indicator
        new Positioned.fill(
          child: Align(
            alignment: Alignment.topCenter,
            child: new SelectedPhotoIndicator(
              photoCount: widget.photoAssetPaths.length,
              visiblePhotoIndex: visiblePhotoIndex,
            ),
          ),
        ),

        // Photo Controls
        _buildPhotoControls(),
      ],
    );
  }
}

class SelectedPhotoIndicator extends StatelessWidget {
  final int photoCount;
  final int visiblePhotoIndex;

  SelectedPhotoIndicator({
    this.photoCount,
    this.visiblePhotoIndex,
  });
  Widget _buildInactiveIndicator() {
    return new Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      child: SizedBox(
        height: 10,
        width: 10,
        child: new Container(
          height: 8,
          width: 8,
          decoration: new BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: new BorderRadius.circular(2.5),
          ),
        ),
      ),
    );
  }
  Widget _buildActiveIndicator() {
    return new Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      child: SizedBox(
        height: 10,
        width: 10,
        child: new Container(
          height: 8,
          width: 8,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(2.5),
          ),
        ),
      ),
    );
  }
  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < photoCount; ++i) {
      indicators.add(
        i == visiblePhotoIndex ? _buildActiveIndicator() : _buildInactiveIndicator(),
      );
    }
    return indicators;
  }
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildIndicators(),
      ),
    );
  }
}
